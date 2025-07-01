
data:extend({
  {
    type = "surface-property",
    name = "hydrargyros-causticity",
    default_value = 1,
    order = "r[hydrargyros]-a",
  }
})

--Extra Planets Causticity --units will be mm/day mpd
local function set_causticity(planet_name,causticity)
  if (data.raw["planet"][planet_name]) then 
    data.raw["planet"][planet_name].surface_properties["hydrargyros-causticity"] = causticity end
end

set_causticity("nauvis", 15)
set_causticity("fulgora", 50)
set_causticity("vulcanus", 100)
set_causticity("gleba", 80)
set_causticity("aquilo", 5)

--space like (no or little atmo)
set_causticity("space-platform", 0)

set_causticity("muluna", 0)
set_causticity("cerys", 0)
--Others
set_causticity("rubia", 120)
set_causticity("maraxsis", 140)
set_causticity("corrundum", 90)
set_causticity("moshine", 45)
set_causticity("cubium", 30)

local notHydrargyro  = {property = "hydrargyros-causticity", max = 200}

for _, entity in pairs(data.raw["electric-pole"]) do
	PlanetsLib.restrict_surface_conditions(entity, notHydrargyro)
end

	PlanetsLib.restrict_surface_conditions(data.raw["pipe"]["pipe"], notHydrargyro)
	PlanetsLib.restrict_surface_conditions(data.raw["pipe-to-ground"]["pipe-to-ground"], notHydrargyro)
  PlanetsLib.restrict_surface_conditions(data.raw["storage-tank"]["storage-tank"], notHydrargyro)
  PlanetsLib.restrict_surface_conditions(data.raw["reactor"]["nuclear-reactor"], notHydrargyro)
  PlanetsLib.restrict_surface_conditions(data.raw["generator"]["steam-engine"], notHydrargyro)
  PlanetsLib.restrict_surface_conditions(data.raw["generator"]["steam-turbine"], notHydrargyro)
  PlanetsLib.restrict_surface_conditions(data.raw["inserter"]["inserter"], notHydrargyro)
  PlanetsLib.restrict_surface_conditions(data.raw["inserter"]["long-handed-inserter"], notHydrargyro)
  PlanetsLib.restrict_surface_conditions(data.raw["inserter"]["fast-inserter"], notHydrargyro)
  PlanetsLib.restrict_surface_conditions(data.raw["inserter"]["bulk-inserter"], notHydrargyro)
  PlanetsLib.restrict_surface_conditions(data.raw["inserter"]["stack-inserter"], notHydrargyro)
  PlanetsLib.restrict_surface_conditions(data.raw["assembling-machine"]["assembling-machine-1"], notHydrargyro)
  PlanetsLib.restrict_surface_conditions(data.raw["assembling-machine"]["assembling-machine-2"], notHydrargyro)
  PlanetsLib.restrict_surface_conditions(data.raw["assembling-machine"]["assembling-machine-3"], notHydrargyro)
  PlanetsLib.restrict_surface_conditions(data.raw["heat-pipe"]["heat-pipe"], notHydrargyro)
