local DarkDoor, super = Class(Event, "darkdoor")


function DarkDoor:init(data)
        -- Place the event at the correct position, and make the size 20x20
        super.init(self, data.x, data.y, 28, 54, data)

        self.path = data.properties.path

        self.isOpen = false
    
        -- Most events in DELTARUNE are 2x sized
        self:setScale(2)
    
        -- We placed a single point in Tiled, which we want to be the bottom center of the pinwheel
        self:setOrigin(0.5, 1)

end
function DarkDoor:draw()
    super.draw(self)
    if not self.isOpen then
        love.graphics.draw(Assets.getTexture(self.path.."_0"), 0, 0, 0, 1, 1)
    else
        love.graphics.draw(Assets.getTexture(self.path.."_1"), 0, 0, 0, 1, 1)
    end
        
end
function DarkDoor:open()
    Game.world.stage:getObjects(Registry.getEvent("room_dark"))[1].visible = not self.isOpen 
    Game.world.stage:getObjects(Registry.getEvent("open_dark_door"))[1].visible = not self.isOpen
    Assets.playSound("door_impact")
    self.isOpen = not self.isOpen 
    Game.world.stage:getObjects(Registry.getEvent("open_dark_door"))[1].visibility = 0
end

return DarkDoor