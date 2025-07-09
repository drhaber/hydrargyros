data:extend({ 

  {
    type = "recipe-category",
    name = "fumigation"
  },
 {
    type = "recipe",
    name = "mercurian-marriage",
    icon = "__hydrargyros__/graphics/icons/recipe/mercurian-marriage.png",
    category = "fumigation",
    subgroup = "fluid-recipes",
    order = "d[other-chemistry]-a[mercurian-marriage]",
    auto_recycle = false,
    enabled = true,
    ingredients =
    {
      {type = "fluid", name = "liquid-mercury", amount = 1000},
      {type = "fluid", name = "magnesium-chloride-brine", amount = 1000},
    },
    energy_required = 1,
    results =
    {
      {type = "fluid", name = "steam", amount = 1000, temperature = 100}
    },
    allow_productivity = false,
    always_show_products = true,
    show_amount_in_title = false,
    allow_decomposition = false,
    crafting_machine_tint =
    {
      primary = {r = 1.000, g = 0.912, b = 0.036, a = 1.000}, -- #ffe809ff
      secondary = {r = 0.707, g = 0.797, b = 0.335, a = 1.000}, -- #b4cb55ff
      tertiary = {r = 0.681, g = 0.635, b = 0.486, a = 1.000}, -- #ada17bff
      quaternary = {r = 1.000, g = 0.804, b = 0.000, a = 1.000}, -- #ffcd00ff
    }
  },
})  