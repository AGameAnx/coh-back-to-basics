function each_file(rgd)
	if rgd.GameData and rgd.GameData.weapon_bag.target_table.tp_vehicle_universal_carrier then
		local bc = rgd.GameData.weapon_bag.target_table.tp_vehicle_universal_carrier
		bc.damage_multiplier = 1
		bc.moving_accuracy_multiplier = 0.8
		bc.penetration_multiplier = 0.8
		bc.priority = 60
		print(rgd.name)
		--rgd:save()
	end
end

function at_end()
end