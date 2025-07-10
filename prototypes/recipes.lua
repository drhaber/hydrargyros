data:extend({ 

--Catgeories
  {
    type = "recipe-category",
    name = "fumigation"
  },
-- Items  
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
})  