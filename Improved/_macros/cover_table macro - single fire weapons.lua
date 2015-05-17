function each_file(rgd)
	if rgd.GameData and rgd.GameData.weapon_bag then
		local bag = rgd.GameData.weapon_bag
		
		bag.cover_table.tp_garrison_cover.accuracy_multiplier = 0.4
		bag.cover_table.tp_garrison_cover.damage_multiplier = 0.5
		bag.cover_table.tp_garrison_cover.penetration_multiplier = 1
		bag.cover_table.tp_garrison_cover.suppression_multiplier = 0
		
		bag.cover_table.tp_heavy.accuracy_multiplier = 0.6
		bag.cover_table.tp_heavy.damage_multiplier = 0.65
		bag.cover_table.tp_heavy.penetration_multiplier = 1
		bag.cover_table.tp_heavy.suppression_multiplier = 0.3
		
		bag.cover_table.tp_light.accuracy_multiplier = 0.75
		bag.cover_table.tp_light.damage_multiplier = 0.85
		bag.cover_table.tp_light.penetration_multiplier = 1
		bag.cover_table.tp_light.suppression_multiplier = 0.6
		
		bag.cover_table.tp_negative.accuracy_multiplier = 1.15
		bag.cover_table.tp_negative.damage_multiplier = 1.15
		bag.cover_table.tp_negative.penetration_multiplier = 1
		bag.cover_table.tp_negative.suppression_multiplier = 1.3
		
		bag.cover_table.tp_open.accuracy_multiplier = 1
		bag.cover_table.tp_open.damage_multiplier = 1
		bag.cover_table.tp_open.penetration_multiplier = 1
		bag.cover_table.tp_open.suppression_multiplier = 1
		
		print(rgd.name)
		--rgd:save()
	end
end

function at_end()
end
