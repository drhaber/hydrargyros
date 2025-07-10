local hit_effects = require("__base__.prototypes.entity.hit-effects")
local sounds = require("__base__.prototypes.entity.sounds")
local space_age_sounds = require ("__space-age__.prototypes.entity.sounds")

data:extend({
  {
    type = "assembling-machine",
    name = "mercuric-fumigation-chamber",
    icon = "__hydrargyros__/graphics/entities/mercuric-fumigation-chamber/mercuric-fumigation-chamber.png",
    icon_size = 64,
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
    minable = {mining_time = 1, result = "mercuric-fumigation-chamber"},
    max_health = 500,
    corpse = "big-remnants",
    resistances = {
      {
        type = "fire",
        percent = 98
      }
    },
    surface_conditions = {{property = "hydrargyros-causticity", min = 200}},
    collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    crafting_categories = {"fumigation"},
    crafting_speed = settings.startup["hydrargyros-mercuric-fumigation-chamber-crafting-speed"].value,
    --module_slots = 4,
    energy_source = 
    {
      type = "void"
    },
    energy_usage = "100kW",
    graphics_set ={
      animation = {
        filename = "__hydrargyros__/graphics/entities/mercuric-fumigation-chamber/mercuric-fumigation-chamber.png",
        width = 128,
        height = 128,
        frame_count = 1,
        shift = {0, -0.5},
        scale = 0.5
      }
    },
    working_visualisations =
    {
      {
        animation =
        {
          filename = "__hydrargyros__/graphics/entities/mercuric-fumigation-chamber/mercuric-fumigation-chamber-working.png",
          width = 128,
          height = 128,
          frame_count = 16,
          line_length = 4,
          shift = {0, -0.5},
          scale = 0.5
        }
      }
    },
    fluid_boxes =
    {
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        volume = 1000,
        pipe_connections =
        {
          {
            flow_direction="input",
            direction = defines.direction.north,
            position = {-1, -1}
          }
        }
      },
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        volume = 1000,
        pipe_connections =
        {
          {
            flow_direction="input",
            direction = defines.direction.north,
            position = {1, -1}
          }
        }
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        volume = 100,
        pipe_connections =
        {
          {
            flow_direction = "output",
            direction = defines.direction.south,
            position = {-1, 1}
          }
        }
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        volume = 100,
        pipe_connections =
        {
          {
            flow_direction = "output",
            direction = defines.direction.south,
            position = {1, 1}
          }
        }
      }
    },
    vehicle_impact_sound = sounds.generic_impact,
    open_sound = space_age_sounds.machine_open,
    close_sound = space_age_sounds.machine_close,
  }
}
)