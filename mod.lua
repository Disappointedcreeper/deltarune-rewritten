function Mod:init()
    print("Loaded "..self.info.name.."!")
    Utils.merge(MUSIC_PITCHES, {
        ["hometown"] = 0.8,
    })
end
function Mod:postInit()
    Game:setFlag("soulMode", "red")
end