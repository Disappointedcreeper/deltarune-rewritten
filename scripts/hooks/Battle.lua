---@class Battle : Object
local Battle, super = Class(Battle)

function Battle:init()
    super.super.init(self)

    self.cheer_up_timer = 0

    self.party = {}

    self.money = 0
    self.xp = 0

    self.used_violence = false

    self.ui_move = Assets.newSound("ui_move")
    self.ui_select = Assets.newSound("ui_select")
    self.spare_sound = Assets.newSound("spare")

    self.party_beginning_positions = {} -- Only used in TRANSITION, but whatever
    self.enemy_beginning_positions = {}

    self.party_world_characters = {}
    self.enemy_world_characters = {}
    self.battler_targets = {}

    self.encounter_context = nil

    self:createPartyBattlers()

    self.intro_timer = 0
    self.offset = 0

    self.transitioned = false
    self.started = false

    self.textbox_timer = 0
    self.use_textbox_timer = true

    -- states: BATTLETEXT, TRANSITION, INTRO, ACTIONSELECT, ACTING, SPARING, USINGITEMS, ATTACKING, ACTIONSDONE, ENEMYDIALOGUE, DIALOGUEEND, DEFENDING, VICTORY, TRANSITIONOUT
    -- ENEMYSELECT, MENUSELECT, XACTENEMYSELECT, PARTYSELECT, DEFENDINGEND, DEFENDINGBEGIN

    self.state = "NONE"
    self.substate = "NONE"

    self.camera = Camera(self, SCREEN_WIDTH/2, SCREEN_HEIGHT/2, SCREEN_WIDTH, SCREEN_HEIGHT, false)

    self.cutscene = nil

    self.current_selecting = 0

    self.turn_count = 0

    self.battle_ui = nil
    self.tension_bar = nil

    self.arena = nil
    self.soul = nil

    self.music = Music()

    self.resume_world_music = false

    self.mask = ArenaMask()
    self:addChild(self.mask)

    self.timer = Timer()
    self:addChild(self.timer)

    self.character_actions = {}

    self.selected_character_stack = {}
    self.selected_action_stack = {}

    self.current_actions = {}
    self.short_actions = {}
    self.current_action_index = 1
    self.processed_action = {}
    self.processing_action = false

    self.attackers = {}
    self.normal_attackers = {}
    self.auto_attackers = {}

    self.attack_done = false
    self.cancel_attack = false
    self.auto_attack_timer = 0

    self.post_battletext_func = nil
    self.post_battletext_state = "ACTIONSELECT"

    self.battletext_table = nil
    self.battletext_index = 1

    self.current_menu_x = 1
    self.current_menu_y = 1

    self.enemies = {}
    self.enemies_index = {}
    self.enemy_dialogue = {}
    self.enemies_to_remove = {}
    self.defeated_enemies = {}

    self.seen_encounter_text = false

    self.waves = {}
    self.finished_waves = false

    self.state_reason = nil
    self.substate_reason = nil

    self.menu_items = {}

    self.selected_enemy = 1
    self.selected_spell = nil
    self.selected_xaction = nil
    self.selected_item = nil

    self.spell_delay = 0
    self.spell_finished = false

    self.actions_done_timer = 0

    self.xactions = {}

    self.background_fade_alpha = 0

    self.wave_length = 0
    self.wave_timer = 0

    self.should_finish_action = false
    self.on_finish_keep_animation = nil
    self.on_finish_action = nil

    self.defending_begin_timer = 0

    self.darkify = false
end

function Battle:nextTurn()
    self:progressCheerUp()

    self.turn_count = self.turn_count + 1
    if self.turn_count > 1 then
        if self.encounter:onTurnEnd() then
            return
        end
        for _,enemy in ipairs(self:getActiveEnemies()) do
            if enemy:onTurnEnd() then
                return
            end
        end
    end

    for _,action in ipairs(self.current_actions) do
        if action.action == "DEFEND" then
            self:finishAction(action)
        end
    end

    for _,enemy in ipairs(self.enemies) do
        enemy.selected_wave = nil
        enemy.hit_count = 0
    end

    for _,battler in ipairs(self.party) do
        battler.hit_count = 0
        if (battler.chara:getHealth() <= 0) and battler.chara:canAutoHeal() then
            battler:heal(battler.chara:autoHealAmount(), nil, true)
        end
        battler.action = nil
    end

    self.attackers = {}
    self.normal_attackers = {}
    self.auto_attackers = {}

    self.current_selecting = 1
    while not (self.party[self.current_selecting]:isActive()) do
        self.current_selecting = self.current_selecting + 1
        if self.current_selecting > #self.party then
            Kristal.Console:warn("Nobody up! This shouldn't happen...")
            self.current_selecting = 1
            break
        end
    end

    self.current_button = 1

    self.character_actions = {}
    self.current_actions = {}
    self.processed_action = {}

    if self.battle_ui then
        for _,box in ipairs(self.battle_ui.action_boxes) do
            box.selected_button = 1
            --box:setHeadIcon("head")
            box:resetHeadIcon()
        end
        if self.state == "INTRO" or self.state_reason == "INTRO" or not self.seen_encounter_text then
            self.seen_encounter_text = true
            self.battle_ui.current_encounter_text = self.encounter.text
        else
            self.battle_ui.current_encounter_text = self:getEncounterText()
        end
        self.battle_ui.encounter_text:setText(self.battle_ui.current_encounter_text)
    end

    if self.soul then
        self:returnSoul()
    end

    self.encounter:onTurnStart()

    for _,enemy in ipairs(self:getActiveEnemies()) do
        enemy:onTurnStart()
    end

    if self.battle_ui then
        for _,party in ipairs(self.party) do
            party.chara:onTurnStart(party)
        end
    end

    if self.current_selecting ~= 0 and self.state ~= "ACTIONSELECT" then
        self:setState("ACTIONSELECT")
    end
end

function Battle:applyCheerUp(def, legnth)
    if self.cheer_up_timer <= 0 then
        for _,member in ipairs(self.party) do
            member.chara:addStatBuff("defense", def)
            Kristal.Console:log("Applying cheer up buff of ".. def)
            Kristal.Console:log(member.chara:getName().."'s defence is now ".. member.chara:getStat("defense"))
        end
    end
    self.cheer_up_timer = legnth
end

function Battle:progressCheerUp()
    if self.cheer_up_timer == 0 then
        for _,member in ipairs(self.party) do
            Kristal.Console:log("Removing cheer up buff of ".. member.chara:getStat("defense") - member.chara:getBaseStat("defense"))
            member.chara:addStatBuff("defense", -1 * (member.chara:getStat("defense") - member.chara:getBaseStat("defense")))
            Kristal.Console:log(member.chara:getName().."'s defence is now ".. member.chara:getStat("defense"))
        end
    end
    self.cheer_up_timer = self.cheer_up_timer -1
    if self.cheer_up_timer >= 0 then
        Kristal.Console:log("Cheer up buff has "..(self.cheer_up_timer + 1).." turns remaining.")
    end
end

return Battle