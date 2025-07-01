local item_sounds = require("__base__.prototypes.item_sounds")
local item_tints = require("__base__.prototypes.item-tints")
local space_age_item_sounds = require("__space-age__.prototypes.item_sounds")

data:extend({


--- subgroups
  {
    type = "item-subgroup",
    name = "hydrargyros-processes",
    group = "intermediate-products",
    order = "ncc"
  },

--- items
  {
    type = "item",
    name = "quick-silver-science-pack",
    icon = "__hydrargyros__/graphics/items/quick-silver-science-pack.png",
    subgroup = "science-pack",
    order = "ncc",
    icon_size = 64,
    pictures =
    {
      { size = 64, filename = "__hydrargyros__/graphics/items/quick-silver-science-pack.png", scale = 0.5 },
    },
    stack_size = 200,
    default_import_location = "hydrargyros",
    random_tint_color = item_tints.iron_rust,
    weight = 1*kg,
  },  
    {
    type = "item",
    name = "copper-chloride",
    icon = "__hydrargyros__/graphics/items/material-crystal-copper-chloride-3.png",
    subgroup = "hydrargyros-processes",
    order = "abb",
    icon_size = 64,
    pictures =
    {
      { size = 64, filename = "__hydrargyros__/graphics/items/material-crystal-copper-chloride-1.png", scale = 0.5 },
      { size = 64, filename = "__hydrargyros__/graphics/items/material-crystal-copper-chloride-2.png", scale = 0.5 },
      { size = 64, filename = "__hydrargyros__/graphics/items/material-crystal-copper-chloride-3.png", scale = 0.5 },
      { size = 64, filename = "__hydrargyros__/graphics/items/material-crystal-copper-chloride-4.png", scale = 0.5 },
    },
    stack_size = 100,
    default_import_location = "hydrargyros",
    random_tint_color = item_tints.iron_rust,
    weight = 1*kg,
  },
  {
    type = "item",
    name = "pyrite",
    icon = "__hydrargyros__/graphics/items/material-crystal-pyrite-2.png",
    subgroup = "hydrargyros-processes",
    order = "abc",
    icon_size = 64,
    pictures =
    {
      { size = 64, filename = "__hydrargyros__/graphics/items/material-crystal-pyrite-1.png", scale = 0.5 },
      { size = 64, filename = "__hydrargyros__/graphics/items/material-crystal-pyrite-2.png", scale = 0.5 },
      { size = 64, filename = "__hydrargyros__/graphics/items/material-crystal-pyrite-3.png", scale = 0.5 },
    },
    stack_size = 100,
    default_import_location = "hydrargyros",
    random_tint_color = item_tints.iron_rust,
    weight = 1*kg,
  },
  {
    type = "item",
    name = "calcium-chloride",
    icon = "__hydrargyros__/graphics/items/pile-calcium-chloride.png",
    subgroup = "hydrargyros-processes",
    order = "adu",
    icon_size = 64,
    pictures =
    {
      { size = 64, filename = "__hydrargyros__/graphics/items/pile-calcium-chloride.png", scale = 0.5 },
    },
    stack_size = 100,
    default_import_location = "hydrargyros",
    random_tint_color = item_tints.iron_rust,
    weight = 1*kg,
  },   
  {
    type = "item",
    name = "calcium-oxide",
    icon = "__hydrargyros__/graphics/items/pile-calcium-oxide.png",
    subgroup = "hydrargyros-processes",
    order = "adv",
    icon_size = 64,
    pictures =
    {
      { size = 64, filename = "__hydrargyros__/graphics/items/pile-calcium-oxide.png", scale = 0.5 },
    },
    stack_size = 100,
    default_import_location = "hydrargyros",
    random_tint_color = item_tints.iron_rust,
    weight = 1*kg,
  },    
  {
    type = "item",
    name = "ingot-magnesium",
    icon = "__hydrargyros__/graphics/items/metal-ingot-magnesium.png",
    subgroup = "hydrargyros-processes",
    order = "adc",
    icon_size = 64,
    pictures =
    {
      { size = 64, filename = "__hydrargyros__/graphics/items/metal-ingot-magnesium.png", scale = 0.5 },
    },
    stack_size = 100,
    default_import_location = "hydrargyros",
    random_tint_color = item_tints.iron_rust,
    weight = 1*kg,
  },  
  {
    type = "item",
    name = "ingot-mercury",
    icon = "__hydrargyros__/graphics/items/metal-ingot-mercury.png",
    subgroup = "hydrargyros-processes",
    order = "adc",
    icon_size = 64,
    pictures =
    {
      { size = 64, filename = "__hydrargyros__/graphics/items/metal-ingot-mercury.png", scale = 0.5 },
    },
    stack_size = 100,
    default_import_location = "hydrargyros",
    random_tint_color = item_tints.iron_rust,
    weight = 1*kg,
  },
  {
    type = "item",
    name = "plate-copper-aercury-amalgam",
    icon = "__hydrargyros__/graphics/items/part-metal-plate-copper-aercury-amalgam.png",
    subgroup = "hydrargyros-processes",
    order = "add",
    icon_size = 64,
    pictures =
    {
      { size = 64, filename = "__hydrargyros__/graphics/items/part-metal-plate-copper-aercury-amalgam.png", scale = 0.5 },
    },
    stack_size = 100,
    default_import_location = "hydrargyros",
    random_tint_color = item_tints.iron_rust,
    weight = 1*kg,
  },  
  {
    type = "item",
    name = "mesh-steel",
    icon = "__hydrargyros__/graphics/items/material-mesh-steel.png",
    subgroup = "hydrargyros-processes",
    order = "aea",
    icon_size = 64,
    pictures =
    {
      { size = 64, filename = "__hydrargyros__/graphics/items/material-mesh-steel.png", scale = 0.5 },
    },
    stack_size = 100,
    default_import_location = "hydrargyros",
    random_tint_color = item_tints.iron_rust,
    weight = 1*kg,
  },
  {
    type = "item",
    name = "hydroxide-mercury-power-cell",
    icon = "__hydrargyros__/graphics/items/part-hydroxide-mercury-power-cell.png",
    subgroup = "hydrargyros-processes",
    order = "aeb",
    icon_size = 64,
    pictures =
    {
      { size = 64, filename = "__hydrargyros__/graphics/items/part-hydroxide-mercury-power-cell.png", scale = 0.5 },
    },
    stack_size = 100,
    default_import_location = "hydrargyros",
    random_tint_color = item_tints.iron_rust,
    weight = 1*kg,
  },
  {
    type = "item",
    name = "insulated-cable",
    icon = "__hydrargyros__/graphics/items/part-insulated-cable-1.png",
    subgroup = "hydrargyros-processes",
    order = "aec",
    icon_size = 64,
    pictures =
    {
      { size = 64, filename = "__hydrargyros__/graphics/items/part-insulated-cable-1.png", scale = 0.5 },
      { size = 64, filename = "__hydrargyros__/graphics/items/part-insulated-cable-2.png", scale = 0.5 },
      { size = 64, filename = "__hydrargyros__/graphics/items/part-insulated-cable-3.png", scale = 0.5 },
      { size = 64, filename = "__hydrargyros__/graphics/items/part-insulated-cable-4.png", scale = 0.5 },
    },
    stack_size = 100,
    default_import_location = "hydrargyros",
    random_tint_color = item_tints.iron_rust,
    weight = 1*kg,
  },  
  {
    type = "item",
    name = "lime-glass",
    icon = "__hydrargyros__/graphics/items/part-lime-glass.png",
    subgroup = "hydrargyros-processes",
    order = "aed",
    icon_size = 64,
    pictures =
    {
      { size = 64, filename = "__hydrargyros__/graphics/items/part-lime-glass.png", scale = 0.5 },
    },
    stack_size = 100,
    default_import_location = "hydrargyros",
    random_tint_color = item_tints.iron_rust,
    weight = 1*kg,
  },    
  {
    type = "item",
    name = "metal-steel-gear",
    icon = "__hydrargyros__/graphics/items/part-metal-steel-gear-3.png",
    subgroup = "hydrargyros-processes",
    order = "aei",
    icon_size = 64,
    pictures =
    {
      { size = 64, filename = "__hydrargyros__/graphics/items/part-metal-steel-gear-1.png", scale = 0.5 },
      { size = 64, filename = "__hydrargyros__/graphics/items/part-metal-steel-gear-2.png", scale = 0.5 },
      { size = 64, filename = "__hydrargyros__/graphics/items/part-metal-steel-gear-3.png", scale = 0.5 },
      { size = 64, filename = "__hydrargyros__/graphics/items/part-metal-steel-gear-4.png", scale = 0.5 },
    },
    stack_size = 100,
    default_import_location = "hydrargyros",
    random_tint_color = item_tints.iron_rust,
    weight = 1*kg,
  },  
  {
    type = "item",
    name = "rubber-tube",
    icon = "__hydrargyros__/graphics/items/part-rubber-tube.png",
    subgroup = "hydrargyros-processes",
    order = "aef",
    icon_size = 64,
    pictures =
    {
      { size = 64, filename = "__hydrargyros__/graphics/items/part-rubber-tube.png", scale = 0.5 },
    },
    stack_size = 100,
    default_import_location = "hydrargyros",
    random_tint_color = item_tints.iron_rust,
    weight = 1*kg,
  },     
  {
    type = "item",
    name = "vacuum-tube",
    icon = "__hydrargyros__/graphics/items/part-vacuum-tube.png",
    subgroup = "hydrargyros-processes",
    order = "aeg",
    icon_size = 64,
    pictures =
    {
      { size = 64, filename = "__hydrargyros__/graphics/items/part-vacuum-tube.png", scale = 0.5 },
    },
    stack_size = 100,
    default_import_location = "hydrargyros",
    random_tint_color = item_tints.iron_rust,
    weight = 1*kg,
  },  
  {
    type = "item",
    name = "resin",
    icon = "__hydrargyros__/graphics/items/material-blob-resin-4.png",
    subgroup = "hydrargyros-processes",
    order = "aeh",
    icon_size = 64,
    pictures =
    {
      { size = 64, filename = "__hydrargyros__/graphics/items/material-blob-resin-1.png", scale = 0.5 },
      { size = 64, filename = "__hydrargyros__/graphics/items/material-blob-resin-2.png", scale = 0.5 },
      { size = 64, filename = "__hydrargyros__/graphics/items/material-blob-resin-3.png", scale = 0.5 },
      { size = 64, filename = "__hydrargyros__/graphics/items/material-blob-resin-4.png", scale = 0.5 },
      { size = 64, filename = "__hydrargyros__/graphics/items/material-blob-resin-5.png", scale = 0.5 },
      { size = 64, filename = "__hydrargyros__/graphics/items/material-blob-resin-6.png", scale = 0.5 },
    },
    stack_size = 100,
    default_import_location = "hydrargyros",
    random_tint_color = item_tints.iron_rust,
    weight = 1*kg,
  },  
    {
    type = "item",
    name = "material-rubber-sheet",
    icon = "__hydrargyros__/graphics/items/material-rubber-sheet-4.png",
    subgroup = "hydrargyros-processes",
    order = "aee",
    icon_size = 64,
    pictures =
    {
      { size = 64, filename = "__hydrargyros__/graphics/items/material-rubber-sheet-1.png", scale = 0.5 },
      { size = 64, filename = "__hydrargyros__/graphics/items/material-rubber-sheet-2.png", scale = 0.5 },
      { size = 64, filename = "__hydrargyros__/graphics/items/material-rubber-sheet-3.png", scale = 0.5 },
      { size = 64, filename = "__hydrargyros__/graphics/items/material-rubber-sheet-4.png", scale = 0.5 },
    },
    stack_size = 100,
    default_import_location = "hydrargyros",
    random_tint_color = item_tints.iron_rust,
    weight = 1*kg,
  },
})