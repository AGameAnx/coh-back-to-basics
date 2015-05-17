function each_file(rgd)
	if rgd.GameData and rgd.GameData.weapon_bag then
		rgd.GameData.weapon_bag.target_table.tp_building_allies_checkpoint.accuracy_multiplier = rgd.GameData.weapon_bag.target_table.tp_cw_emplacements.accuracy_multiplier
		rgd.GameData.weapon_bag.target_table.tp_building_allies_checkpoint.damage_multiplier = rgd.GameData.weapon_bag.target_table.tp_cw_emplacements.damage_multiplier
		rgd.GameData.weapon_bag.target_table.tp_building_allies_checkpoint.penetration_multiplier = rgd.GameData.weapon_bag.target_table.tp_cw_emplacements.penetration_multiplier
		print(rgd.name)
		--rgd:save()
	end
end

function at_end()
end
