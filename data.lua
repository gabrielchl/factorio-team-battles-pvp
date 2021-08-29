data.raw["artillery-turret"]["derpy-artillery"].manual_range_modifier = 1.5 / 1.5
data.raw["gun"]["derpy-artillery-gun"].attack_parameters.range = 1.5 * 7 * 32

data.raw["car"]["vehicle-chaingunner"].resistances = {
	{
		type = "fire",
		percent = 50
	},
	{
		type = "physical",
		decrease = 2,
		percent = 15
	},
	{
		type = "impact",
		decrease = 40,
		percent = 40
	},
  {
		type = "acid",
    percent = 25
  }
}
data.raw["car"]["vehicle-chaingunner"].render_layer = "higher-object-under"

local tech_light_arti = data.raw["technology"]["derpy-artillery"]
tech_light_arti.unit = {
	count = 100,
	time = 0.3,
	ingredients = {
		{"automation-science-pack", 1},
    {"logistic-science-pack", 1},
		{"military-science-pack", 1},
	}
}
table.insert(tech_light_arti.prerequisites, "military-science-pack")
table.insert(tech_light_arti.effects, {type = "unlock-recipe", recipe = "artillery-targeting-remote"})
table.insert(tech_light_arti.effects, {type = "unlock-recipe", recipe = "derpy-artillery-manual"})
table.insert(tech_light_arti.effects, {type = "unlock-recipe", recipe = "derpy-artillery-manual-to-auto"})

data.raw["recipe"]["artillery-targeting-remote"].ingredients = {{"radar",1},{"advanced-circuit",1}}

local tech_chaingunner = data.raw["technology"]["vehicle-chaingunner"]
tech_chaingunner.unit.count = 100
tech_chaingunner.unit.time = 0.3
