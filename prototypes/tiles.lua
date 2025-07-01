local tile_trigger_effects = require("__space-age__/prototypes/tile/tile-trigger-effects")
local tile_pollution = require("__space-age__/prototypes/tile/tile-pollution-values")
local tile_collision_masks = require("__base__/prototypes/tile/tile-collision-masks")
local tile_graphics = require("__base__/prototypes/tile/tile-graphics")
local base_sounds = require("__base__/prototypes/entity/sounds")
local base_tile_sounds = require("__base__/prototypes/tile/tile-sounds")
local tile_sounds = require("__space-age__/prototypes/tile/tile-sounds")

local lava_to_out_of_map_transition = space_age_tiles_util.lava_to_out_of_map_transition
local lava_stone_transitions_between_transitions = space_age_tiles_util.lava_stone_transitions_between_transitions

data:extend({
  {
    type = "tile",
    name = "lake-mercury",
    icon = "__space-age__/graphics/icons/wetland-yumako.png",
    order = "c[resource]-a[wetland-yumako]",
    subgroup = "gleba-water-tiles",
    collision_mask = tile_collision_masks.shallow_water(),
    autoplace = {probability_expression = "gleba_fertile_spots_coastal * 5000 * (1 - gleba_biome_mask_green) * gleba_above_deep_water_mask"},
    default_cover_tile = "foundation",
    lowland_fog = true,
    effect = "wetland-green",
    fluid = "liquid-mercury",
    effect_color = { 74, 67, 38 },
    effect_color_secondary = { 117, 110, 38 },
    particle_tints = tile_graphics.gleba_shallow_water_particle_tints,
    layer_group = "water-overlay",
    layer = 3,
    sprite_usage_surface = "vulcanus",
    variants =
    {
      main =
      {
        {
          picture = "__space-age__/graphics/terrain/gleba/wetland-dead-skin.png",
          count = 1,
          scale = 0.5,
          size = 1
        }
      },
      transition = tile_graphics.generic_masked_tile_transitions1
    },
    transitions = {lava_to_out_of_map_transition},
    transitions_between_transitions = data.raw.tile["water"].transitions_between_transitions,
    map_color={132, 119, 7},
    absorptions_per_second = tile_pollution.gleba_water,

    walking_speed_modifier = 0.8,
    vehicle_friction_modifier = 8.0,

    walking_sound = base_tile_sounds.walking.shallow_water,
    landing_steps_sound = tile_sounds.landing.semi_wet,
    driving_sound = tile_sounds.driving.wetland,
    ambient_sounds = tile_sounds.ambient.insects_deep_mud({max_entity_count = 30, average_pause_seconds = 8}),

    trigger_effect = tile_trigger_effects.water_mud_trigger_effect(),
  },
  {
    type = "tile",
    name = "lake-magnesium-chloride-brine",
    icon = "__space-age__/graphics/icons/wetland-jellynut.png",
    order = "c[resource]-b[wetland-jellynut]",
    subgroup = "gleba-water-tiles",
    collision_mask = tile_collision_masks.shallow_water(),
    autoplace = {probability_expression = "gleba_fertile_spots_coastal * 5000 * (1 - gleba_biome_mask_red) * gleba_above_deep_water_mask"},
    default_cover_tile = "foundation",
    fluid = "magnesium-chloride-brine",
    lowland_fog = true,
    effect = "wetland-purple",
    effect_color = { 83, 42, 56 },
    effect_color_secondary = { 91, 45, 88 },
    layer_group = "water-overlay",
    particle_tints = tile_graphics.gleba_mud_water_particle_tints,
    layer_group = "water",
    layer = 3,
    sprite_usage_surface = "vulcanus",
    variants =
    {
      main =
      {
        {
          picture = "__space-age__/graphics/terrain/gleba/wetland-purple-tentacle.png",
          count = 1,
          scale = 0.5,
          size = 1
        }
      },
      transition = tile_graphics.generic_masked_tile_transitions1
    },
    transitions = {lava_to_out_of_map_transition},
    transitions_between_transitions = data.raw.tile["water"].transitions_between_transitions,
    map_color={132, 7, 119},
    absorptions_per_second = tile_pollution.gleba_water,

    walking_speed_modifier = 0.8,
    vehicle_friction_modifier = 8.0,

    walking_sound = base_tile_sounds.walking.shallow_water,
    landing_steps_sound = tile_sounds.landing.wet,
    driving_sound = tile_sounds.driving.wetland,
    ambient_sounds =
    {
      tile_sounds.ambient.insects_deep_mud({max_entity_count = 30, average_pause_seconds = 8}),
      tile_sounds.ambient.night_frogs,
    },

    trigger_effect = tile_trigger_effects.water_mud_trigger_effect(),
  }
  })