data:extend({
      {
	 type = "recipe",
	 name = "floating-electric-pole",
	 enabled = false,
	 ingredients = {
	    {"empty-barrel", 4},
	    {"big-electric-pole", 1},
	    {"iron-plate", 5}
	 },
	 result = "floating-electric-pole",
	 result_count = 1
      },
})


local vanilla_lamp = data.raw["lamp"]["small-lamp"]
vanilla_lamp.fast_replaceable_group = "lamp"

-- Add a Floating Lamp
local floating_lamp = util.table.deepcopy(vanilla_lamp)
floating_lamp.name = "floating-lamp"
floating_lamp.minable.result = "floating-lamp"
floating_lamp.glow_size = 30
floating_lamp.glow_color_intensity = 1
floating_lamp.darkness_for_all_lamps_on = 0.3
floating_lamp.darkness_for_all_lamps_off = 0.1
floating_lamp.glow_render_mode = "multiplicative"
floating_lamp.fast_replaceable_group = "lamp"
data:extend({floating_lamp})
