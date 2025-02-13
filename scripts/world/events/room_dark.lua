local RoomDark, super = Class(Event, "room_dark")


function RoomDark:init(data)
        super.init(self, data.x, data.y, 538, 240, data)
        self.trans = 0

        self.visible = false

        self.path = data.properties.path
    
        -- Most events in DELTARUNE are 2x sized
        self:setScale(2)

        self:setOrigin(0, 0)

end
function RoomDark:draw()
    super.draw(self)
    local darkdoor = Game.world.stage:getObjects(Registry.getEvent("open_dark_door"))[1]
    if self.visible then
        self.trans = darkdoor.shadow_alpha * (math.sin(darkdoor.siner / 16) * 0.05 + 0.95) * darkdoor.visibility
    else
        self.trans = 0
    end
    love.graphics.setColor(1, 1, 1, self.trans)
    love.graphics.draw(Assets.getTexture(self.path), 0, 0, 0, 1, 1)
    
        
end

return RoomDark