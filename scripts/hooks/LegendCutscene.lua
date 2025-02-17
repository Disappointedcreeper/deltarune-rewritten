---@class LegendCutscene : Cutscene
local LegendCutscene, super = Class(LegendCutscene, "LegendCutscene")
function LegendCutscene:init(group, id, ...)
    super.init(self,group, id, ...)
    self.text_positions = {
        ["70"             ] = {70 , 370},
        ["90"             ] = {90 , 370},
        ["100"            ] = {100, 370},
        ["110"            ] = {110, 370},
        ["114"            ] = {114, 370},
        ["120"            ] = {120, 370},
        ["130"            ] = {130, 370},
        ["134"            ] = {134, 370},
        ["140"            ] = {140, 370},
        ["146"            ] = {146, 370},
        ["150"            ] = {150, 370},
        ["160"            ] = {160, 370},
        ["170"            ] = {170, 370},
        ["174"            ] = {174, 370},
        ["186"            ] = {186, 370},
        ["194"            ] = {194, 370},
        ["200"            ] = {200, 370},
        ["210"            ] = {210, 370},
        ["218"            ] = {218, 370},
        ["234"            ] = {234, 370},
        ["240"            ] = {240, 370},
        ["250"            ] = {250, 370},
        ["300"            ] = {300, 370},

        ["double_left"    ] = {80 , 320},
        ["double_right"   ] = {390, 320},

        ["text_human"     ] = {20 , 370},
        ["text_monster"   ] = {210, 370},
        ["text_prince"    ] = {440, 370},

        ["far_left"       ] = {80 , 320},
        ["far_right"      ] = {440, 320},
        ["left"           ] = {160, 320},
        ["right"          ] = {390, 320},
        ["top_left"       ] = {80 , 160},
        ["middle_bottom"  ] = {160, 370},
        ["left_bottom"    ] = {120, 370},
        ["far_left_bottom"] = {80 , 370}
        
    }
end
return LegendCutscene