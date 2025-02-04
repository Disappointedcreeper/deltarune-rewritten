---@overload fun(...) : BattleUI
local BattleUI, super = Class(BattleUI)

function BattleUI:init()
    super.super.init(self, 0, 480)

    self.layer = BATTLE_LAYERS["ui"]

    self.current_encounter_text = Game.battle.encounter.text

    self.encounter_text = Textbox(30, 53, SCREEN_WIDTH - 30, SCREEN_HEIGHT - 53, "main_mono", nil, true)
    self.encounter_text.text.line_offset = 0
    self.encounter_text:setText("")
    self.encounter_text.debug_rect = {-30, -12, SCREEN_WIDTH+1, 124}
    self:addChild(self.encounter_text)

    self.choice_box = Choicebox(56, 49, 529, 103, true)
    self.choice_box.active = false
    self.choice_box.visible = false
    self:addChild(self.choice_box)

    self.short_act_text_1 = DialogueText("", 30, 51, SCREEN_WIDTH - 30, SCREEN_HEIGHT - 53, {wrap = false, line_offset = 0})
    self.short_act_text_2 = DialogueText("", 30, 51 + 30, SCREEN_WIDTH - 30, SCREEN_HEIGHT - 53, {wrap = false, line_offset = 0})
    self.short_act_text_3 = DialogueText("", 30, 51 + 30 + 30, SCREEN_WIDTH - 30, SCREEN_HEIGHT - 53, {wrap = false, line_offset = 0})
    self:addChild(self.short_act_text_1)
    self:addChild(self.short_act_text_2)
    self:addChild(self.short_act_text_3)

    self.action_boxes = {}
    self.attack_boxes = {}

    self.attacking = false

    local size_offset = 0
    local box_gap = 0
    
    if #Game.battle.party == 3 then
        size_offset = 0
        box_gap = 0
    elseif #Game.battle.party == 2 then
        size_offset = 108
        box_gap = 1
        if Game:getConfig("oldUIPositions") then
            size_offset = 106
            box_gap = 7
        end
    elseif #Game.battle.party == 1 then
        size_offset = 213
        box_gap = 0
    end

    for index,battler in ipairs(Game.battle.party) do
        local action_box = ActionBox(size_offset+ (index - 1) * (213 + box_gap), 0, index, battler)
        self:addChild(action_box)
        table.insert(self.action_boxes, action_box)
        battler.chara:onActionBox(action_box, false)
    end

    self.parallax_x = 0
    self.parallax_y = 0

    self.animation_done = true
    self.animation_timer = 0
    self.animate_out = false

    self.animation_y = 0
    self.animation_y_lag = 0

    self.shown = false

    self.heart_sprite = Assets.getTexture("player/modes/"..Game:getFlag("soulMode").."_heart")
    self.arrow_sprite = Assets.getTexture("ui/page_arrow_down")

    self.sparestar = Assets.getTexture("ui/battle/sparestar")
    self.tiredmark = Assets.getTexture("ui/battle/tiredmark")
end
return BattleUI