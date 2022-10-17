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

data:extend({
      {
	 type = "recipe",
	 name = "floating-lamp",
	 enabled = false,
	 ingredients =
	    {
	       {"electronic-circuit", 1},
	       {"copper-cable", 3},
	       {"empty-barrel", 4},
	       {"iron-plate", 1}
	    },
	 result = "floating-lamp",
	 result_count = 1
      },
})


