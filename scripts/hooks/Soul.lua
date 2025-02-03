---@class Soul : Soul
local Soul, super = Class(Soul)

function Soul:init(x,y,color)
    super.init(self,x,y,color)
    Kristal.Console:log("Initializing Soul at ".. x .. ", " .. y)
    self:setColor(COLORS.white)
    self.sprite:set("player/modes/red_heart")
end

return Soul