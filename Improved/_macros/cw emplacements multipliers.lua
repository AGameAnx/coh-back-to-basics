function each_file(rgd)
	if rgd.GameData and rgd.GameData.weapon_bag.target_table.tp_cw_emplacements.accuracy_multiplier >= 2 and rgd.GameData.weapon_bag.target_table.tp_cw_emplacements.damage_multiplier >= 1 then
		local emplacements = rgd.GameData.weapon_bag.target_table.tp_cw_emplacements
		emplacements.accuracy_multiplier = 1
		emplacements.damage_multiplier = 1.5
		print(rgd.name)
		--rgd:save()
	end
end

function at_end()
end