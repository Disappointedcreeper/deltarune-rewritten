local actor, super = Class(Actor, "nara")

function actor:init()
    super.init(self)
    self.voice = "asriel"
end
return actor