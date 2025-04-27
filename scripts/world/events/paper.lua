local Paper, super = Class(Event, "paper")
function Paper:init(data)
    -- Place the event at the correct position, and make the size 20x20
    super.init(self, data.x, data.y, 21, 16, data)

    self.path = data.properties.path
    self.shaking = false
    self.fall = null
    self.xstart = self.x
    self.ystart = self.y
    self.fallen = false
    self.frame = 0
    self.frameTimer = 0

    self.rotation = data.properties.rotation
    -- Most events in DELTARUNE are 2x sized
    self:setScale(2)
    

    self:setOrigin(0.5, 0.5)

end
function Paper:postLoad()
    super.postLoad()
    self.fall = Game.world:getEvent("fall")
end

function Paper:draw()
    super.draw(self)
    if (self.fall.x >= self.x) then
        self.shaking = false
        if (self.fallen == false) then
            self.fallen = true
            Assets.playSound("snd_paper_rise")
            self:slideTo(self.x, self.y + 300)
        end
        love.graphics.draw(Assets.getTexture("world/events/paperfly_".. self.frame), 0, 0, 0, 1, 1)
        if(self.frameTimer < 2) then
            if(self.frame < 2) then
                self.frame = self.frame + 1
            else
                self.frame = 0
            end
            self.frameTimer = 0
        else
            self.frameTimer = self.frameTimer + 1
        end
    else
        love.graphics.draw(Assets.getTexture("world/events/papersit"), 0, 0, rotation, 1, 1)
    end
end
function Paper:update()
    super.update(self)
    if (self.shaking == true) then
        self.x = self.xstart + love.math.random(0,1)
        self.y = self.ystart + love.math.random(0,1)
    end
end
return Paper