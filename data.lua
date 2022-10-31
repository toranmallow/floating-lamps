-- Declare the floating lamp item
data:extend{
  {
    type = "item",
    name = "floating-lamp",
    icon = "__floating-lamps__/graphics/icons/floating-lamp.png",
    icon_size = 64, icon_mipmaps = 4,
    subgroup = "circuit-network",
    order = "a[light]-a[small-lamp-floating]",
    place_result = "floating-lamp",
    stack_size = 50
  },
}

local vanilla_lamp = data.raw["lamp"]["small-lamp"]
vanilla_lamp.fast_replaceable_group = "lamp"

-- Add a floating lamp entity
local floating_lamp = util.table.deepcopy(vanilla_lamp)
floating_lamp.name = "floating-lamp"
floating_lamp.minable.result = "floating-lamp"
floating_lamp.glow_size = 30
floating_lamp.glow_color_intensity = 1
floating_lamp.darkness_for_all_lamps_on = 0.3
floating_lamp.darkness_for_all_lamps_off = 0.1
floating_lamp.glow_render_mode = "multiplicative"
floating_lamp.fast_replaceable_group = "lamp"
floating_lamp.collision_mask = {'ground-tile', 'object-layer'}
floating_lamp.maximum_wire_distance = 48
data:extend({floating_lamp})

-- Add floating lamp recipe
local floating_lamp_recipe = util.table.deepcopy(data.raw["recipe"]["small-lamp"])
floating_lamp_recipe.name = "floating-lamp"
floating_lamp_recipe.result = "floating-lamp"
floating_lamp_recipe.enabled = true
data:extend({floating_lamp_recipe})
