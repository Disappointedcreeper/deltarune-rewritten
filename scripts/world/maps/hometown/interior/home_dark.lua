return {
  version = "1.11",
  luaversion = "5.1",
  tiledversion = "1.11.2",
  class = "",
  orientation = "orthogonal",
  renderorder = "right-down",
  width = 40,
  height = 10,
  tilewidth = 40,
  tileheight = 40,
  nextlayerid = 7,
  nextobjectid = 67,
  properties = {
    ["keep_music"] = true,
    ["light"] = true,
    ["music"] = "AUDIO_DOOR"
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
      type = "tilelayer",
      x = 0,
      y = 0,
      width = 40,
      height = 10,
      id = 1,
      name = "Tile Layer 1",
      class = "",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      encoding = "lua",
      data = {
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
      }
    },
    {
      type = "objectgroup",
      draworder = "topdown",
      id = 3,
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
          id = 1,
          name = "door",
          type = "",
          shape = "rectangle",
          x = 0,
          y = 274,
          width = 250,
          height = 146,
          rotation = 0,
          gid = 16,
          visible = true,
          properties = {}
        }
      }
    },
    {
      type = "objectgroup",
      draworder = "topdown",
      id = 4,
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
          id = 4,
          name = "",
          type = "",
          shape = "rectangle",
          x = 1,
          y = 258,
          width = 1600,
          height = 11,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 5,
          name = "",
          type = "",
          shape = "rectangle",
          x = 0,
          y = 196,
          width = 1600,
          height = 24,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 8,
          name = "",
          type = "",
          shape = "rectangle",
          x = 0,
          y = 220,
          width = 18,
          height = 38,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 9,
          name = "",
          type = "",
          shape = "rectangle",
          x = 1600,
          y = 220,
          width = 40,
          height = 38,
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
      name = "objects_paper",
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
          id = 31,
          name = "paper",
          type = "",
          shape = "point",
          x = 74,
          y = 246,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {
            ["rotation"] = 0
          }
        },
        {
          id = 40,
          name = "paper",
          type = "",
          shape = "point",
          x = 109,
          y = 256,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {
            ["rotation"] = 0
          }
        },
        {
          id = 41,
          name = "paper",
          type = "",
          shape = "point",
          x = 151,
          y = 240,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {
            ["rotation"] = 0
          }
        },
        {
          id = 42,
          name = "paper",
          type = "",
          shape = "point",
          x = 54,
          y = 254,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {
            ["rotation"] = -0.1
          }
        },
        {
          id = 43,
          name = "paper",
          type = "",
          shape = "point",
          x = 163,
          y = 258,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {
            ["rotation"] = 0
          }
        },
        {
          id = 44,
          name = "paper",
          type = "",
          shape = "point",
          x = 121,
          y = 244,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {
            ["rotation"] = 0.1
          }
        },
        {
          id = 45,
          name = "paper",
          type = "",
          shape = "point",
          x = 180,
          y = 242,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {
            ["rotation"] = 0.1
          }
        },
        {
          id = 46,
          name = "paper",
          type = "",
          shape = "point",
          x = 314,
          y = 245,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {
            ["rotation"] = -0.1
          }
        },
        {
          id = 47,
          name = "paper",
          type = "",
          shape = "point",
          x = 227,
          y = 258,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {
            ["rotation"] = 0
          }
        },
        {
          id = 48,
          name = "paper",
          type = "",
          shape = "point",
          x = 250,
          y = 255,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {
            ["rotation"] = 0.1
          }
        },
        {
          id = 49,
          name = "paper",
          type = "",
          shape = "point",
          x = 194,
          y = 256,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {
            ["rotation"] = -0.1
          }
        },
        {
          id = 50,
          name = "paper",
          type = "",
          shape = "point",
          x = 224,
          y = 240,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {
            ["rotation"] = 0.1
          }
        },
        {
          id = 56,
          name = "paper",
          type = "",
          shape = "point",
          x = 90,
          y = 254,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {
            ["rotation"] = 0
          }
        },
        {
          id = 57,
          name = "paper",
          type = "",
          shape = "point",
          x = 140,
          y = 252,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {
            ["rotation"] = 0
          }
        },
        {
          id = 58,
          name = "paper",
          type = "",
          shape = "point",
          x = 293,
          y = 250,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {
            ["rotation"] = 0
          }
        },
        {
          id = 60,
          name = "paper",
          type = "",
          shape = "point",
          x = 281,
          y = 235,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {
            ["rotation"] = -0.1
          }
        },
        {
          id = 62,
          name = "paper",
          type = "",
          shape = "point",
          x = 261,
          y = 241,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {
            ["rotation"] = 0
          }
        },
        {
          id = 63,
          name = "paper",
          type = "",
          shape = "point",
          x = 208,
          y = 246,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {
            ["rotation"] = 0
          }
        },
        {
          id = 64,
          name = "paper",
          type = "",
          shape = "point",
          x = 68,
          y = 258,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {
            ["rotation"] = 0
          }
        }
      }
    },
    {
      type = "objectgroup",
      draworder = "topdown",
      id = 5,
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
          name = "spawn",
          type = "",
          shape = "point",
          x = 53,
          y = 251,
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
      id = 2,
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
          id = 53,
          name = "fall",
          type = "point",
          shape = "point",
          x = 9,
          y = 240,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 55,
          name = "interactable",
          type = "",
          shape = "rectangle",
          x = 65,
          y = 193,
          width = 56,
          height = 27,
          rotation = 0,
          visible = true,
          properties = {
            ["cutscene"] = "home_dark.fall",
            ["once"] = false
          }
        }
      }
    }
  }
}
