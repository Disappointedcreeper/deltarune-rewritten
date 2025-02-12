---@class LegendCutscene : Cutscene
local LegendCutscene, super = Class(LegendCutscene, "LegendCutscene")
function LegendCutscene:init(group, id, ...)
    super.init(self,group, id, ...)
    self.text_positions = {
        ["far_left"       ] = {80 , 320},
        ["far_right"      ] = {440, 320},
        ["left"           ] = {160, 320},
        ["right"          ] = {390, 320},
        ["top_left"       ] = {80 , 160},
        ["middle_bottom"  ] = {160, 370},
        ["left_bottom"    ] = {120, 370},
        ["far_left_bottom"] = {80 , 370},
        ["text_human"     ] = {40 , 370},
        ["text_monster"   ] = {190, 370},
        ["text_prince"    ] = {400, 370}
    }
end
return LegendCutscene