local spell, super = Class(Spell, "cheer_up")

function spell:init()
    super.init(self)

    -- Display name
    self.name = "Cheer Up"
    -- Name displayed when cast (optional)
    self.cast_name = nil

    -- Battle description
    self.effect = "DEF Up\nParty"
    -- Menu description
    self.description = "Raises DEF of party."

    -- TP cost
    self.cost = 32

    -- Target mode (ally, party, enemy, enemies, or none)
    self.target = "party"

    -- Tags that apply to this spell
    self.tags = {"buff"}

    self.timer = 0
end

function spell:onCast(user, target)
    Game.battle:applyCheerUp(user.chara:getStat("magic") + 1, 3)
end

function spell:hasWorldUsage(chara)
    return false
end

return spell