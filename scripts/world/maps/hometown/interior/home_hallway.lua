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
  nextobjectid = 132,
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
          id = 83,
          name = "",
          type = "",
          shape = "rectangle",
          x = 0,
          y = 480,
          width = 1076,
          height = 480,
          rotation = 0,
          gid = 267,
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
          id = 85,
          name = "",
          type = "",
          shape = "rectangle",
          x = 630,
          y = 178,
          width = 208,
          height = 78,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 86,
          name = "",
          type = "",
          shape = "rectangle",
          x = 914,
          y = 178,
          width = 42,
          height = 78,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 87,
          name = "",
          type = "",
          shape = "rectangle",
          x = 652,
          y = 256,
          width = 102,
          height = 8,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 88,
          name = "",
          type = "",
          shape = "rectangle",
          x = 230,
          y = 239,
          width = 336,
          height = 17,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 89,
          name = "",
          type = "",
          shape = "rectangle",
          x = 116,
          y = 244,
          width = 52,
          height = 12,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 94,
          name = "",
          type = "",
          shape = "polygon",
          x = 124,
          y = 334,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polygon = {
            { x = 0, y = 0 },
            { x = -2, y = -2 },
            { x = -6, y = -4 },
            { x = -8, y = -6 },
            { x = -8, y = 0 }
          },
          properties = {}
        },
        {
          id = 95,
          name = "",
          type = "",
          shape = "rectangle",
          x = 107,
          y = 256,
          width = 9,
          height = 78,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 96,
          name = "",
          type = "",
          shape = "rectangle",
          x = 116,
          y = 334,
          width = 840,
          height = 6,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 97,
          name = "",
          type = "",
          shape = "polygon",
          x = 950,
          y = 332,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polygon = {
            { x = 0, y = 0 },
            { x = -2, y = 2 },
            { x = 6, y = 2 },
            { x = 6, y = -4 },
            { x = 4, y = -2 }
          },
          properties = {}
        },
        {
          id = 98,
          name = "",
          type = "",
          shape = "rectangle",
          x = 956,
          y = 256,
          width = 17,
          height = 78,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 99,
          name = "",
          type = "",
          shape = "rectangle",
          x = 352,
          y = 256,
          width = 102,
          height = 6,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 100,
          name = "",
          type = "",
          shape = "rectangle",
          x = 786,
          y = 256,
          width = 24,
          height = 8,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 103,
          name = "",
          type = "",
          shape = "rectangle",
          x = 168,
          y = 232,
          width = 62,
          height = 24,
          rotation = 0,
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
          id = 84,
          name = "",
          type = "",
          shape = "rectangle",
          x = 262,
          y = 256,
          width = 56,
          height = 92,
          rotation = 0,
          gid = 269,
          visible = true,
          properties = {}
        },
        {
          id = 122,
          name = "room_dark",
          type = "",
          shape = "point",
          x = 0,
          y = 0,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {
            ["path"] = "interior/hometown/Home/hallway_dark"
          }
        },
        {
          id = 125,
          name = "darkdoor",
          type = "",
          shape = "point",
          x = 504,
          y = 254,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {
            ["path"] = "world/events/darkdoor"
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
          id = 105,
          name = "stairs",
          type = "",
          shape = "point",
          x = 880,
          y = 291,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 106,
          name = "spawn",
          type = "",
          shape = "point",
          x = 600,
          y = 292,
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
          id = 102,
          name = "mirror",
          type = "",
          shape = "rectangle",
          x = 268,
          y = 172,
          width = 44,
          height = 78,
          rotation = 0,
          visible = true,
          properties = {
            ["offset"] = 14
          }
        },
        {
          id = 104,
          name = "transition",
          type = "",
          shape = "rectangle",
          x = 838,
          y = 191,
          width = 76,
          height = 31,
          rotation = 0,
          visible = true,
          properties = {
            ["map"] = "hometown/interior/home_main",
            ["marker"] = "stairs"
          }
        },
        {
          id = 107,
          name = "transition",
          type = "",
          shape = "rectangle",
          x = 566,
          y = 223,
          width = 64,
          height = 31,
          rotation = 0,
          visible = true,
          properties = {
            ["exit_delay"] = 0.2,
            ["map"] = "hometown/interior/home_bedroom",
            ["marker"] = "entry",
            ["sound"] = "doortransition"
          }
        },
        {
          id = 126,
          name = "open_dark_door",
          type = "",
          shape = "rectangle",
          x = 486,
          y = 150,
          width = 36,
          height = 102,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 127,
          name = "interactable",
          type = "",
          shape = "rectangle",
          x = 482,
          y = 221,
          width = 44,
          height = 27,
          rotation = 0,
          visible = true,
          properties = {
            ["cutscene"] = "home_hallway.darkDoor",
            ["once"] = false
          }
        },
        {
          id = 129,
          name = "interactable",
          type = "",
          shape = "rectangle",
          x = 268,
          y = 226,
          width = 44,
          height = 24,
          rotation = 0,
          visible = true,
          properties = {
            ["text1"] = "* [voice:asriel]It's me."
          }
        },
        {
          id = 130,
          name = "interactable",
          type = "",
          shape = "rectangle",
          x = 658,
          y = 232,
          width = 88,
          height = 24,
          rotation = 0,
          visible = true,
          properties = {
            ["text1"] = "* There's books about snails."
          }
        },
        {
          id = 131,
          name = "interactable",
          type = "",
          shape = "rectangle",
          x = 786,
          y = 248,
          width = 24,
          height = 8,
          rotation = 0,
          visible = true,
          properties = {
            ["text1"] = "* [voice:asriel]The cactus.\n[wait:5]* It's the most tsundere of plants."
          }
        }
      }
    }
  }
}
