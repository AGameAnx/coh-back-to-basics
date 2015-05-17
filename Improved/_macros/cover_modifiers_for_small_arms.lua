function each_file(rgd)
	if rgd.GameData.weapon_bag then
		local cover_table = rgd.GameData.weapon_bag.cover_table
		print("@"..rgd.name)
		print("--before--")
		print("  tp_light.accuracy_multiplier: "..cover_table.tp_light.accuracy_multiplier)
		print("  tp_heavy.accuracy_multiplier: "..cover_table.tp_heavy.accuracy_multiplier)
		print("  tp_heavy.damage_multiplier: "..cover_table.tp_heavy.damage_multiplier)
		cover_table.tp_light.accuracy_multiplier = math.ceil(cover_table.tp_light.accuracy_multiplier*60)/100
		-- cover_table.tp_light.damage_multiplier = rgd.GameData.weapon_bag.cover_table.tp_light.damage_multiplier*0.6
		cover_table.tp_heavy.accuracy_multiplier = math.ceil(cover_table.tp_heavy.accuracy_multiplier*75)/100
		cover_table.tp_heavy.damage_multiplier = math.ceil(cover_table.tp_heavy.damage_multiplier*90)/100
		print("--after--")
		print("  tp_light.accuracy_multiplier: "..cover_table.tp_light.accuracy_multiplier)
		print("  tp_heavy.accuracy_multiplier: "..cover_table.tp_heavy.accuracy_multiplier)
		print("  tp_heavy.damage_multiplier: "..cover_table.tp_heavy.damage_multiplier)
		rgd:save()
	end
end

function at_end()
end
