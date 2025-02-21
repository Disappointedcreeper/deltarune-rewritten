return {
  version = "1.11",
  luaversion = "5.1",
  tiledversion = "1.11.2",
  class = "",
  orientation = "orthogonal",
  renderorder = "right-down",
  width = 35,
  height = 12,
  tilewidth = 40,
  tileheight = 40,
  nextlayerid = 11,
  nextobjectid = 73,
  properties = {
    ["exit_delay"] = 0.2,
    ["exit_sound"] = "door_close",
    ["keep_music"] = false,
    ["light"] = true,
    ["music"] = "home",
    ["name"] = "Home",
    ["sound"] = "door_open"
  },
  tilesets = {
    {
      name = "interior",
      firstgid = 1,
      filename = "../../../tilesets/interior.tsx",
      exportfilename = "../../../tilesets/interior.lua"
    }
  },
  layers = {
    {
      type = "objectgroup",
      draworder = "topdown",
      id = 7,
      name = "objects_bg",
      class = "",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      objects = {
        {
          id = 5,
          name = "",
          type = "",
          shape = "rectangle",
          x = 0,
          y = 480,
          width = 1414,
          height = 480,
          rotation = 0,
          gid = 8,
          visible = true,
          properties = {}
        }
      }
    },
    {
      type = "objectgroup",
      draworder = "topdown",
      id = 10,
      name = "objects_deco",
      class = "",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      objects = {
        {
          id = 52,
          name = "",
          type = "",
          shape = "rectangle",
          x = 844,
          y = 316,
          width = 94,
          height = 104,
          rotation = 0,
          gid = 6,
          visible = true,
          properties = {}
        }
      }
    },
    {
      type = "objectgroup",
      draworder = "topdown",
      id = 8,
      name = "markers",
      class = "",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      objects = {
        {
          id = 6,
          name = "entry",
          type = "",
          shape = "point",
          x = 1166,
          y = 344,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 7,
          name = "stairs",
          type = "",
          shape = "point",
          x = 314,
          y = 348,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 8,
          name = "entry_bathroom",
          type = "",
          shape = "point",
          x = 234,
          y = 374,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 9,
          name = "spawn",
          type = "",
          shape = "point",
          x = 1000,
          y = 344,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        }
      }
    },
    {
      type = "objectgroup",
      draworder = "topdown",
      id = 9,
      name = "collision",
      class = "",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      objects = {
        {
          id = 15,
          name = "",
          type = "",
          shape = "polygon",
          x = 178,
          y = 382,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polygon = {
            { x = 0, y = 0 },
            { x = 0, y = -2 },
            { x = -20, y = -2 },
            { x = -20, y = 20 }
          },
          properties = {}
        },
        {
          id = 16,
          name = "",
          type = "",
          shape = "rectangle",
          x = 158,
          y = 400,
          width = 1114,
          height = 33,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 17,
          name = "",
          type = "",
          shape = "polygon",
          x = 238,
          y = 321.882,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polygon = {
            { x = 0, y = 0 },
            { x = -30, y = 30.1176 },
            { x = -30, y = -1.88235 },
            { x = 0, y = -1.88235 }
          },
          properties = {}
        },
        {
          id = 18,
          name = "",
          type = "",
          shape = "rectangle",
          x = 206,
          y = 312,
          width = 70,
          height = 10,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 20,
          name = "",
          type = "",
          shape = "rectangle",
          x = 269,
          y = 280,
          width = 7,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 21,
          name = "",
          type = "",
          shape = "rectangle",
          x = 342,
          y = 311,
          width = 46,
          height = 11,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 22,
          name = "",
          type = "",
          shape = "rectangle",
          x = 342,
          y = 280,
          width = 10,
          height = 31,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 23,
          name = "",
          type = "",
          shape = "polygon",
          x = 388,
          y = 322,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polygon = {
            { x = 0, y = 0 },
            { x = 8, y = -8 },
            { x = 8, y = -11 },
            { x = 0, y = -11 }
          },
          properties = {}
        },
        {
          id = 24,
          name = "",
          type = "",
          shape = "polygon",
          x = 396,
          y = 314,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polygon = {
            { x = 0, y = 0 },
            { x = 32, y = 0 },
            { x = 36, y = -2 },
            { x = 60, y = -26 },
            { x = 62, y = -30 },
            { x = 62, y = -74 },
            { x = 0, y = -74 }
          },
          properties = {}
        },
        {
          id = 26,
          name = "",
          type = "",
          shape = "rectangle",
          x = 458,
          y = 259,
          width = 238,
          height = 15,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 27,
          name = "",
          type = "",
          shape = "rectangle",
          x = 690,
          y = 274,
          width = 46,
          height = 44,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 28,
          name = "",
          type = "",
          shape = "rectangle",
          x = 736,
          y = 299,
          width = 78,
          height = 23,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 29,
          name = "",
          type = "",
          shape = "polygon",
          x = 814,
          y = 322,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polygon = {
            { x = 0, y = 0 },
            { x = 4, y = -2 },
            { x = 44, y = -42 },
            { x = 44, y = -82 },
            { x = 0, y = -82 }
          },
          properties = {}
        },
        {
          id = 30,
          name = "",
          type = "",
          shape = "polygon",
          x = 1268,
          y = 400,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polygon = {
            { x = 0, y = 0 },
            { x = -42, y = -42 },
            { x = -42, y = -46 },
            { x = 0, y = -46 }
          },
          properties = {}
        },
        {
          id = 31,
          name = "",
          type = "",
          shape = "polygon",
          x = 1190,
          y = 322,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polygon = {
            { x = 0, y = 0 },
            { x = -44, y = -44 },
            { x = -44, y = -82 },
            { x = 0, y = -82 }
          },
          properties = {}
        },
        {
          id = 33,
          name = "",
          type = "",
          shape = "rectangle",
          x = 858,
          y = 230,
          width = 288,
          height = 28,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 34,
          name = "",
          type = "",
          shape = "polygon",
          x = 1051,
          y = 303,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polygon = {
            { x = -1, y = 2 },
            { x = 65, y = 21 },
            { x = 95, y = -3 },
            { x = 95, y = -45 },
            { x = -1, y = -45 }
          },
          properties = {}
        },
        {
          id = 35,
          name = "",
          type = "",
          shape = "rectangle",
          x = 948,
          y = 258,
          width = 94,
          height = 46,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 53,
          name = "",
          type = "",
          shape = "polygon",
          x = 884,
          y = 314,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polygon = {
            { x = 0, y = 0 },
            { x = -24, y = -12 },
            { x = -28, y = -16 },
            { x = -34, y = -27 },
            { x = -27, y = -34 },
            { x = 52, y = -34 },
            { x = 52, y = -20 },
            { x = 50, y = -18 },
            { x = 12, y = 0 },
            { x = 0, y = 0 }
          },
          properties = {}
        },
        {
          id = 56,
          name = "",
          type = "",
          shape = "rectangle",
          x = 854,
          y = 390,
          width = 346,
          height = 10,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 57,
          name = "",
          type = "",
          shape = "rectangle",
          x = 424,
          y = 389,
          width = 296,
          height = 11,
          rotation = 0,
          visible = true,
          properties = {}
        }
      }
    },
    {
      type = "objectgroup",
      draworder = "topdown",
      id = 6,
      name = "objects",
      class = "",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      objects = {
        {
          id = 10,
          name = "",
          type = "",
          shape = "rectangle",
          x = 370,
          y = 400,
          width = 830,
          height = 94,
          rotation = 0,
          gid = 5,
          visible = true,
          properties = {}
        },
        {
          id = 42,
          name = "transition",
          type = "",
          shape = "rectangle",
          x = 159,
          y = 335,
          width = 37,
          height = 31,
          rotation = 0,
          visible = true,
          properties = {
            ["exit_delay"] = 0.2,
            ["map"] = "hometown/interior/home_bathroom",
            ["marker"] = "spawn",
            ["sound"] = "doortransition"
          }
        },
        {
          id = 55,
          name = "interactable",
          type = "",
          shape = "rectangle",
          x = 852,
          y = 274,
          width = 84,
          height = 19,
          rotation = 0,
          visible = true,
          properties = {
            ["text1"] = "* [voice:asriel]It's Chariel!\n[wait:5]* The beloved living room chair."
          }
        },
        {
          id = 66,
          name = "transition",
          type = "",
          shape = "rectangle",
          x = 1202,
          y = 305,
          width = 37,
          height = 31,
          rotation = 0,
          visible = true,
          properties = {
            ["exit_delay"] = 0.2,
            ["map"] = "hometown/krisyard",
            ["marker"] = "entry_house",
            ["sound"] = "doortransition"
          }
        },
        {
          id = 67,
          name = "transition",
          type = "",
          shape = "rectangle",
          x = 276,
          y = 275,
          width = 66,
          height = 31,
          rotation = 0,
          visible = true,
          properties = {
            ["map"] = "hometown/interior/home_hallway",
            ["marker"] = "stairs"
          }
        },
        {
          id = 69,
          name = "interactable",
          type = "",
          shape = "rectangle",
          x = 949,
          y = 273,
          width = 93,
          height = 19,
          rotation = 0,
          visible = true,
          properties = {
            ["text1"] = "* [voice:asriel]Our old TV,[wait:5] looks like it's unplugged."
          }
        },
        {
          id = 70,
          name = "interactable",
          type = "",
          shape = "rectangle",
          x = 694,
          y = 288,
          width = 28,
          height = 24,
          rotation = 0,
          visible = true,
          properties = {
            ["text1"] = "* [voice:asriel]The trash can.\n[wait:15]* .[wait:5].[wait:5].",
            ["text2"] = "* [voice:asriel]It smells like flowers[wait:5].[wait:5].[wait:5]."
          }
        },
        {
          id = 72,
          name = "interactable",
          type = "",
          shape = "rectangle",
          x = 1050,
          y = 273,
          width = 96,
          height = 19,
          rotation = 0,
          visible = true,
          properties = {
            ["text1"] = "* [voice:asriel]It's just a regular chair."
          }
        }
      }
    }
  }
}
