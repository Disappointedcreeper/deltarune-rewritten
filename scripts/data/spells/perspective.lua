local spell, super = Class(Spell, "perspective")

function spell:init()
    super.init(self)

    -- Display name
    self.name = "Perspective"
    -- Name displayed when cast (optional)
    self.cast_name = nil

    -- Battle description
    self.effect = "Heal\nAlly"
    -- Menu description
    self.description = "Restores a little HP to one party member.\nDepends on Magic."

    -- TP cost
    self.cost = 32

    -- Target mode (ally, party, enemy, enemies, or none)
    self.target = "ally"

    -- Tags that apply to this spell
    self.tags = {"heal"}
end

function spell:onCast(user, target)
    target:heal(user.chara:getStat("magic") * 5)
end

function spell:hasWorldUsage(chara)
    return true
end

function spell:onWorldCast(chara)
    Game.world:heal(chara, 100)
end

return spell