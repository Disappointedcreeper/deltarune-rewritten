function Mod:init()
    print("Loaded "..self.info.name.."!")
end
function Mod:postInit()
    Game:setFlag("soulMode", "red")
end