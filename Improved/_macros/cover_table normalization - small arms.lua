function each_file(rgd)
	if rgd.GameData.weapon_bag then
		local c = rgd.GameData.weapon_bag.cover_table
		
		c.tp_defcover.accuracy_multiplier = 1
		c.tp_defcover.damage_multiplier = 1
		c.tp_defcover.penetration_multiplier = 1
		c.tp_defcover.suppression_multiplier = 1
		
		c.tp_defcover_narrow.accuracy_multiplier = 1
		c.tp_defcover_narrow.damage_multiplier = 1
		c.tp_defcover_narrow.penetration_multiplier = 1
		c.tp_defcover_narrow.suppression_multiplier = 1
		
		c.tp_garrison_cover.accuracy_multiplier = 0.5
		c.tp_garrison_cover.damage_multiplier = 0.5
		c.tp_garrison_cover.penetration_multiplier = 1
		c.tp_garrison_cover.suppression_multiplier = 0
		
		c.tp_garrison_halftrack.accuracy_multiplier = 0.5
		c.tp_garrison_halftrack.damage_multiplier = 0.6
		c.tp_garrison_halftrack.penetration_multiplier = 1
		c.tp_garrison_halftrack.suppression_multiplier = 0
		
		c.tp_heavy.accuracy_multiplier = 0.55
		c.tp_heavy.damage_multiplier = 0.5
		c.tp_heavy.penetration_multiplier = 1
		c.tp_heavy.suppression_multiplier = 0.5
		
		c.tp_light.accuracy_multiplier = 0.55
		c.tp_light.damage_multiplier = 0.85
		c.tp_light.penetration_multiplier = 1
		c.tp_light.suppression_multiplier = 0.7
		
		c.tp_negative.accuracy_multiplier = 1.05
		c.tp_negative.damage_multiplier = 1
		c.tp_negative.penetration_multiplier = 1
		c.tp_negative.suppression_multiplier = 1.1
		
		c.tp_open.accuracy_multiplier = 1.05
		c.tp_open.damage_multiplier = 1
		c.tp_open.penetration_multiplier = 1
		c.tp_open.suppression_multiplier = 1
		
		c.tp_smoke.accuracy_multiplier = 0.15
		c.tp_smoke.damage_multiplier = 1
		c.tp_smoke.penetration_multiplier = 1
		c.tp_smoke.suppression_multiplier = 0.05
		
		c.tp_trench.accuracy_multiplier = 0.5
		c.tp_trench.damage_multiplier = 0.55
		c.tp_trench.penetration_multiplier = 1
		c.tp_trench.suppression_multiplier = 0
		
		c.tp_water.accuracy_multiplier = 1.05
		c.tp_water.damage_multiplier = 1
		c.tp_water.penetration_multiplier = 1
		c.tp_water.suppression_multiplier = 1
		
		c.tp_z_bunker.accuracy_multiplier = 0.15
		c.tp_z_bunker.damage_multiplier = 0.75
		c.tp_z_bunker.penetration_multiplier = 1
		c.tp_z_bunker.suppression_multiplier = 0
		
		c.tp_z_emplacement.accuracy_multiplier = 0.5
		c.tp_z_emplacement.damage_multiplier = 1
		c.tp_z_emplacement.penetration_multiplier = 1
		c.tp_z_emplacement.suppression_multiplier = 0.75
	end
	rgd:save()
end

function at_end()
end
