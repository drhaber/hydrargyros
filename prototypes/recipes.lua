data:extend({ 

--Catgeories
  {
    type = "recipe-category",
    name = "fumigation"
  },
-- Machines
{
  type = "recipe",
  name = "mercuric-fumigation-chamber",
  enabled = false,
  energy_required = 30, -- time to craft in seconds (at crafting speed 1)
  ingredients = {
    {type = "item", name = "metal-steel-gear", amount = 10},
    {type = "item", name = "steel-plate", amount = 50},
    {type = "item", name = "kr-steel-pipe", amount = 50},
    {type = "item", name = "lime-glass", amount = 50},
    {type = "item", name = "stone-brick", amount = 100},
  },
  results = {{type = "item", name = "mercuric-fumigation-chamber", amount = 1}}
},
{
  type = "recipe",
  name = "steam-heater",
  enabled = false,
  energy_required = 30, -- time to craft in seconds (at crafting speed 1)
  ingredients = {
    {type = "item", name = "plate-copper-mercury-amalgam", amount = 10},
    {type = "item", name = "steel-plate", amount = 5},
    {type = "item", name = "kr-steel-pipe", amount = 5},
    {type = "item", name = "stone-brick", amount = 10},
  },
  results = {{type = "item", name = "steam-heater", amount = 1}}
},
{
  type = "recipe",
  name = "heated-assembling-machine",
  enabled = false,
  energy_required = 30, -- time to craft in seconds (at crafting speed 1)
  ingredients = {
    {type = "item", name = "plate-copper-mercury-amalgam", amount = 10},
    {type = "item", name = "steel-plate", amount = 5},
    {type = "item", name = "metal-steel-gear", amount = 5},
    {type = "item", name = "stone-brick", amount = 10},
  },
  results = {{type = "item", name = "heated-assembling-machine", amount = 1}}
},
--"heat-inserter"
{
  type = "recipe",
  name = "long-heat-inserter",
  enabled = false,
  energy_required = 2, -- time to craft in seconds (at crafting speed 1)
  ingredients = {
    {type = "item", name = "heat-inserter", amount = 1},
    {type = "item", name = "steel-plate", amount = 1},
    {type = "item", name = "metal-steel-gear", amount = 1},
  },
  results = {{type = "item", name = "long-heat-inserter", amount = 1}}
},
{
  type = "recipe",
  name = "fast-heat-inserter",
  enabled = false,
  energy_required = 2, -- time to craft in seconds (at crafting speed 1)
  ingredients = {
    {type = "item", name = "heat-inserter", amount = 1},
    {type = "item", name = "vacuum-tube", amount = 1},
    {type = "item", name = "metal-steel-gear", amount = 1},
  },
  results = {{type = "item", name = "fast-heat-inserter", amount = 1}}
},
{
  type = "recipe",
  name = "bulk-heat-inserter",
  enabled = false,
  energy_required = 2, -- time to craft in seconds (at crafting speed 1)
  ingredients = {
    {type = "item", name = "fast-heat-inserter", amount = 1},
    {type = "item", name = "hydroxide-mercury-power-cell", amount = 1},
    {type = "item", name = "metal-steel-gear", amount = 1},
  },
  results = {{type = "item", name = "bulk-heat-inserter", amount = 1}}
},
{
  type = "recipe",
  name = "stack-heat-inserter",
  enabled = false,
  energy_required = 2, -- time to craft in seconds (at crafting speed 1)
  ingredients = {
    {type = "item", name = "stack-inserter", amount = 1},
    {type = "item", name = "hydroxide-mercury-power-cell", amount = 1},
    {type = "item", name = "material-rubber-sheet", amount = 1},
  },
  results = {{type = "item", name = "stack-heat-inserter", amount = 1}}
},
-- Items  
{
  type = "recipe",
  name = "plate-copper-mercury-amalgam",
  category = "fumigation",
  enabled = false,
  energy_required = 10, -- time to craft in seconds (at crafting speed 1)
  ingredients = {
    {type = "fluid", name = "fluid-copper-mercury-amalgam", amount = 1000},
  },
  results = {{type = "item", name = "plate-copper-mercury-amalgam", amount = 1}}
},
{
  type = "recipe",
  name = "calcium-oxide",
  category = "smelting",
  enabled = false,
  energy_required = 10, -- time to craft in seconds (at crafting speed 1)
  ingredients = {
    {type = "item", name = "calcite", amount = 3},
  },
  results = {{type = "item", name = "calcium-oxide", amount = 1}}
},
{
  type = "recipe",
  name = "mesh-steel",
  category = "crafting-with-heat",
  enabled = false,
  energy_required = 10, -- time to craft in seconds (at crafting speed 1)
  ingredients = {
    {type = "item", name = "steel-plate", amount = 3},
  },
  results = {{type = "item", name = "mesh-steel", amount = 5}}
},
-- Fluids
 {
    type = "recipe",
    name = "mercurian-marriage",
    icon = "__hydrargyros__/graphics/icons/recipe/mercurian-marriage.png",
    category = "fumigation",
    subgroup = "fluid-recipes",
    order = "d[other-chemistry]-a[mercurian-marriage]",
    enabled = false,
    ingredients =
    {
      {type = "fluid", name = "liquid-mercury", amount = 1000},
      {type = "fluid", name = "magnesium-chloride-brine", amount = 1000},
    },
    energy_required = 1,
    results =
    {
      {type = "fluid", name = "steam", amount = 1000, temperature = 70}
    },
    allow_productivity = false,
  },
   {
    type = "recipe",
    name = "fluid-copper-mercury-amalgam",
    category = "fumigation",
    subgroup = "fluid-recipes",
    order = "d[other-chemistry]-a[fluid-copper-mercury-amalgam]",
    enabled = false,
    ingredients =
    {
      {type = "fluid", name = "liquid-mercury", amount = 1000},
      {type = "item", name = "copper-chloride", amount = 1},
    },
    energy_required = 1,
    results =
    {
      {type = "fluid", name = "fluid-copper-mercury-amalgam", amount = 100, temperature = 70}
    },
    allow_productivity = true,
  },
})  