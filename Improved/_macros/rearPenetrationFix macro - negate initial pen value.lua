function each_file(rgd)
	if rgd.GameData and rgd.GameData.weapon_bag then
		local changed = false
		local changes = {}
		for i in pairs(rgd.GameData.weapon_bag.target_table) do
			if i ~= "$REF" then
				local changedCur = false
				local t = rgd.GameData.weapon_bag.target_table[i]
				if t.penetration_multiplier > 0 and t.penetration_multiplier != 1 and t.rear_penetration_multiplier != 1 then
					t.rear_penetration_multiplier = math.min(2, t.rear_penetration_multiplier / t.penetration_multiplier)
					
					changedCur = true
					changed = true
				end
				if changedCur then
					changes[table.getn(changes)+1] = string.format("  %s: %.2f * %.2f = %.2f", i, t.penetration_multiplier, math.min(2, t.rear_penetration_multiplier / t.penetration_multiplier))
				end
			end
		end
		if changed then
			print(rgd.name)
			for i=1,table.getn(changes) do print(changes[i]) end
			--rgd:save()
		end
	end
end

function at_end()
end
