return {
  version = "1.11",
  luaversion = "5.1",
  tiledversion = "1.11.2",
  class = "",
  orientation = "orthogonal",
  renderorder = "right-down",
  width = 16,
  height = 12,
  tilewidth = 40,
  tileheight = 40,
  nextlayerid = 11,
  nextobjectid = 81,
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
          id = 66,
          name = "",
          type = "",
          shape = "rectangle",
          x = 0,
          y = 480,
          width = 640,
          height = 480,
          rotation = 0,
          gid = 262,
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
      objects = {}
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
          id = 69,
          name = "transition",
          type = "",
          shape = "rectangle",
          x = 486,
          y = 282,
          width = 24,
          height = 18,
          rotation = 0,
          visible = true,
          properties = {
            ["exit_delay"] = 0.2,
            ["exit_sound"] = "door_close",
            ["map"] = "hometown/interior/home_main",
            ["marker"] = "entry_bathroom",
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
          id = 67,
          name = "spawn",
          type = "",
          shape = "point",
          x = 458,
          y = 316,
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
          id = 71,
          name = "",
          type = "",
          shape = "rectangle",
          x = 336,
          y = 246,
          width = 52,
          height = 34,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 72,
          name = "",
          type = "",
          shape = "rectangle",
          x = 388,
          y = 247,
          width = 62,
          height = 31,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 73,
          name = "",
          type = "",
          shape = "polygon",
          x = 450,
          y = 260,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polygon = {
            { x = 0, y = 0 },
            { x = 30, y = 30 },
            { x = 30, y = 0 }
          },
          properties = {}
        },
        {
          id = 76,
          name = "",
          type = "",
          shape = "rectangle",
          x = 316,
          y = 247,
          width = 20,
          height = 59,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 77,
          name = "",
          type = "",
          shape = "rectangle",
          x = 178,
          y = 247,
          width = 138,
          height = 49,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 78,
          name = "",
          type = "",
          shape = "polygon",
          x = 96,
          y = 340,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polygon = {
            { x = 0, y = 0 },
            { x = 76, y = -76 },
            { x = 0, y = -76 }
          },
          properties = {}
        },
        {
          id = 79,
          name = "",
          type = "",
          shape = "rectangle",
          x = 96,
          y = 342,
          width = 440,
          height = 18,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 80,
          name = "",
          type = "",
          shape = "polygon",
          x = 512,
          y = 322,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polygon = {
            { x = -2, y = -2 },
            { x = 20, y = -2 },
            { x = 20, y = 20 }
          },
          properties = {}
        }
      }
    }
  }
}
