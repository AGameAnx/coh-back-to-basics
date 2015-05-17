function each_file(rgd)
	if rgd.GameData and rgd.GameData.weapon_bag then
		local atgun = rgd.GameData.weapon_bag.target_table.tp_vehicle_allies_57mm_towed_gun
		if atgun.accuracy_multiplier <= 0.2 then
			atgun.accuracy_multiplier = 0.5
			atgun.damage_multiplier = 1.5
		end
		print(rgd.name)
		--rgd:save()
	end
end

function at_end()
end
