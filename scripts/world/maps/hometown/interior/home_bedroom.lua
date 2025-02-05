return {
  version = "1.11",
  luaversion = "5.1",
  tiledversion = "1.11.2",
  class = "",
  orientation = "orthogonal",
  renderorder = "right-down",
  width = 27,
  height = 12,
  tilewidth = 40,
  tileheight = 40,
  nextlayerid = 11,
  nextobjectid = 145,
  properties = {
    ["exit_delay"] = 0.2,
    ["exit_sound"] = "door_close",
    ["keep_music"] = false,
    ["music"] = "home",
    ["name"] = "Home",
    ["sound"] = "door_open"
  },
  tilesets = {
    {
      name = "hometown",
      firstgid = 1,
      filename = "../../../tilesets/hometown.tsx",
      exportfilename = "../../../tilesets/hometown.lua"
    },
    {
      name = "interior",
      firstgid = 261,
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
          id = 109,
          name = "",
          type = "",
          shape = "rectangle",
          x = 0,
          y = 480,
          width = 640,
          height = 480,
          rotation = 0,
          gid = 263,
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
          id = 118,
          name = "",
          type = "",
          shape = "rectangle",
          x = 466,
          y = 266,
          width = 92,
          height = 76,
          rotation = 0,
          gid = 272,
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
          id = 136,
          name = "",
          type = "",
          shape = "rectangle",
          x = 444,
          y = 384,
          width = 74,
          height = 60,
          rotation = 0,
          gid = 273,
          visible = true,
          properties = {}
        },
        {
          id = 142,
          name = "transition",
          type = "",
          shape = "rectangle",
          x = 290,
          y = 480,
          width = 80,
          height = 31,
          rotation = 0,
          visible = true,
          properties = {
            ["exit_delay"] = 0.2,
            ["map"] = "hometown/interior/home_hallway",
            ["marker"] = "spawn",
            ["sound"] = "doortransition"
          }
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
          id = 143,
          name = "entry",
          type = "",
          shape = "point",
          x = 331,
          y = 429,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 144,
          name = "spawn",
          type = "",
          shape = "point",
          x = 327,
          y = 293,
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
          id = 119,
          name = "",
          type = "",
          shape = "rectangle",
          x = 2,
          y = 80,
          width = 78,
          height = 320,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 120,
          name = "",
          type = "",
          shape = "rectangle",
          x = 80,
          y = 122,
          width = 481,
          height = 80,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 121,
          name = "",
          type = "",
          shape = "rectangle",
          x = 560.163,
          y = 80.1667,
          width = 80,
          height = 320,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 123,
          name = "",
          type = "",
          shape = "rectangle",
          x = 370,
          y = 400,
          width = 190,
          height = 80.1667,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 124,
          name = "",
          type = "",
          shape = "rectangle",
          x = 80,
          y = 400,
          width = 210,
          height = 80.1667,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 127,
          name = "",
          type = "",
          shape = "rectangle",
          x = 180,
          y = 202,
          width = 96,
          height = 36,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 128,
          name = "",
          type = "",
          shape = "rectangle",
          x = 80,
          y = 202,
          width = 100,
          height = 114,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 130,
          name = "",
          type = "",
          shape = "rectangle",
          x = 374,
          y = 202,
          width = 92,
          height = 36,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 131,
          name = "",
          type = "",
          shape = "rectangle",
          x = 466,
          y = 202,
          width = 94,
          height = 116,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 137,
          name = "",
          type = "",
          shape = "rectangle",
          x = 460,
          y = 356,
          width = 58,
          height = 28,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 138,
          name = "",
          type = "",
          shape = "rectangle",
          x = 444,
          y = 360,
          width = 16,
          height = 18,
          rotation = 0,
          visible = true,
          properties = {}
        }
      }
    }
  }
}
