function each_file(rgd)
	if rgd.GameData and rgd.GameData.weapon_bag then
		print(rgd.name)
		for i,v in rgd.GameData.weapon_bag.target_table.tp_vehicle_axis_sdkfz_251_halftrack do
			if i ~= "$REF" and i ~= 'penetration_multiplier' then
				print(string.format("    (%s) %s = %s", tostring(rgd.GameData.weapon_bag.target_table.tp_vehicle_sdkfz_22x_light_armoured_car[i]), i, tostring(v)))
				rgd.GameData.weapon_bag.target_table.tp_vehicle_sdkfz_22x_light_armoured_car[i] = v
			end
		end
		rgd.GameData.weapon_bag.target_table.tp_vehicle_sdkfz_22x_light_armoured_car.penetration_multiplier = rgd.GameData.weapon_bag.target_table.tp_vehicle_axis_sdkfz_251_halftrack.penetration_multiplier + 0.1
		print(string.format("    (%s) %s = %s", tostring(rgd.GameData.weapon_bag.target_table.tp_vehicle_sdkfz_22x_light_armoured_car.penetration_multiplier), 'penetration_multiplier', tostring(rgd.GameData.weapon_bag.target_table.tp_vehicle_sdkfz_22x_light_armoured_car.penetration_multiplier)))
		--rgd:save()
	end
end

function at_end()
end