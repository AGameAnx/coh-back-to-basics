function each_file(rgd)
	if rgd.GameData and rgd.GameData.weapon_bag then
		print(rgd.name)
		for i in pairs(rgd.GameData.weapon_bag.target_table) do
			if i ~= "$REF" then
				if rgd.GameData.weapon_bag.target_table[i].rear_penetration_multiplier > 1 then
					rgd.GameData.weapon_bag.target_table[i].rear_penetration_multiplier = rgd.GameData.weapon_bag.target_table[i].penetration_multiplier*2
					print(string.format("  %s: %.2f", i, rgd.GameData.weapon_bag.target_table[i].rear_penetration_multiplier))
				end
			end
		end
		--rgd:save()
	end
end

function at_end()
end