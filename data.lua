--require("prototypes.entity.hydrargyros")
require("prototypes.tiles")
require("prototypes.items")
require("prototypes.fluids")
require("prototypes.recipes")
require("__space-age__/prototypes/planet/planet-vulcanus-map-gen")
require("__space-age__/prototypes/planet/planet-gleba-map-gen")

local planet_map_gen = require("__space-age__/prototypes/planet/planet-map-gen")

local effects = require("__core__.lualib.surface-render-parameter-effects")
local asteroid_util = require("__space-age__.prototypes.planet.asteroid-spawn-definitions")
local planet_catalogue_aquilo = require("__space-age__.prototypes.planet.procession-catalogue-aquilo")
local planet_map_gen = require("__base__/prototypes/planet/planet-map-gen")

planet_map_gen.hydrargyros = function()
  return
  {
    property_expression_names =
    {
      elevation = "gleba_elevation",
      temperature = "gleba_temperature",
      moisture = "gleba_moisture",
      aux = "gleba_aux",
      cliffiness = "cliffiness_basic",
      cliff_elevation = "cliff_elevation_from_elevation",

    },
    cliff_settings =
    {
      name = "cliff-vulcanus",
      cliff_elevation_interval = 120,
      cliff_elevation_0 = 70
    },
    autoplace_controls =
    {
    },
    autoplace_settings =
    {
      ["tile"] =
      {
        settings =
        {
          
          ["volcanic-soil-dark"] = {},
          ["volcanic-soil-light"] = {},
          ["volcanic-ash-soil"] = {},
          ["volcanic-ash-light"] = {},
          ["volcanic-ash-dark"] = {},
          ["volcanic-cracks"] = {},
          ["volcanic-folds"] = {},
          ["volcanic-folds-flat"] = {},
          ["lake-mercury"] = {},
          ["lake-magnesium-chloride-brine"] = {},
          ["pit-rock"] = {}
        }
      },
      ["decorative"] =
      {
        settings =
        {
          ["calcite-stain"] = {},
          ["calcite-stain-small"] = {},
          ["crater-small"] = {},
          ["crater-large"] = {},
          ["pumice-relief-decal"] = {},
          ["tiny-rock-cluster"] = {},
        }
      },
      ["entity"] =
      {
        settings =
        {

          ["crater-cliff"] = {},
        }
      }
    }
  }
end

data:extend({
  	{
		type = "planet",
    name = "hydrargyros",
    icon = "__hydrargyros__/graphics/icons/hydrargyros.png",
    icon_size = 64,
    starmap_icon = "__hydrargyros__/graphics/icons/hydrargyros-starmap.png",
    starmap_icon_size = 64,
    gravity_pull = 12,
    distance = 42,
    orientation = 0.45,
    magnitude = 1.0,
    label_orientation = 0.15,
    order = "f",
    temperature = -195,
    subgroup = "planets",
    map_gen_settings = planet_map_gen.hydrargyros(),
    pollutant_type = nil,
    solar_power_in_space = 50,
    platform_procession_set =
    {
      arrival = {"planet-to-platform-b"},
      departure = {"platform-to-planet-a"}
    },
    planet_procession_set =
    {
      arrival = {"platform-to-planet-b"},
      departure = {"planet-to-platform-a"}
    },
    procession_graphic_catalogue = planet_catalogue_aquilo, 
    surface_properties =
    {
      ["day-night-cycle"] = 15 * minute,
      ["magnetic-field"] = 50,
      pressure = 5300,
      ["solar-power"] = 0,
      gravity = 12
    },
    entities_require_heating = true,
    {
    type = "space-connection",
    name = "aquillo-hydrargyros",
    subgroup = "planet-connections",
    from = "aquillo",
    to = "hydrargyros",
    order = "x",
    length = 35000,
    asteroid_spawn_definitions = asteroid_util.spawn_definitions(asteroid_util.fulgora_aquilo)
  }
}})