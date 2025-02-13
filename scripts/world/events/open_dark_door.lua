local open_dark_door, super = Class("DarkDoorFXRect")

function open_dark_door:init(properties)
    super.init(self, properties.x, properties.y, properties.width, properties.height)
    self.visible = false
end

return open_dark_door