-- [ Allow Floating Electric Poles to provide electricity around them like a substation ]
if (mods or script.active_mods)["cargo-ships"] then

   local floating_pole = data.raw["electric-pole"]["floating-electric-pole"]
   floating_pole.supply_area_distance = data.raw["electric-pole"]["substation"].supply_area_distance

end
