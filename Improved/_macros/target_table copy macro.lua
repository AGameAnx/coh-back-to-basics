function each_file(rgd)
	if rgd.GameData and rgd.GameData.weapon_bag then
		print(rgd.name)
		print("  sherman > m10:")
		for i,v in rgd.GameData.weapon_bag.target_table.tp_armour_allies_sherman do
			if i ~= "$REF" then
				print(string.format("    (%s) %s = %s", tostring(rgd.GameData.weapon_bag.target_table.tp_armour_allies_m10_td[i]), i, tostring(v)))
				rgd.GameData.weapon_bag.target_table.tp_armour_allies_m10_td[i] = v
			end
		end
		print("  infantry_heroic > infantry_sniper:")
		for i,v in rgd.GameData.weapon_bag.target_table.tp_infantry_heroic do
			if i ~= "$REF" then
				print(string.format("    (%s) %s = %s", tostring(rgd.GameData.weapon_bag.target_table.tp_infantry_sniper[i]), i, tostring(v)))
				rgd.GameData.weapon_bag.target_table.tp_infantry_sniper[i] = v
			end
		end
		--rgd:save()
	end
end

function at_end()
end
