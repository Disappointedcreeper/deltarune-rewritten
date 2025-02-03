---@class Soul : Soul
local Soul, super = Class(Soul)

function Soul:init(x,y,color)
    Kristal.Console:log("Initializing soul")
    super.init(self,x,y,color)
    self:setColor(COLORS.white)
    self.sprite:set("player/modes/cyan_heart")
end

return Soul