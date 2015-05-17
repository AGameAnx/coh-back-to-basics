function each_file(rgd)
	if rgd.GameData and rgd.GameData.weapon_bag then
		local changed = false
		local changes = {}
		for i in pairs(rgd.GameData.weapon_bag.target_table) do
			if i ~= "$REF" then
				local changedCur = false
				local t = rgd.GameData.weapon_bag.target_table[i]
				if t.penetration_multiplier > 0 and t.rear_penetration_multiplier ~= 1 and t.rear_penetration_multiplier ~= t.penetration_multiplier then
					
					t.rear_penetration_multiplier =
						math.min((t.penetration_multiplier
						--[[-(math.min(15, t.rear_penetration_multiplier*t.penetration_multiplier)-t.penetration_multiplier)/4]]
						+(1-math.max(0, math.min(t.penetration_multiplier, 1))*0.7)*(math.max(0.5, math.min(15, t.rear_penetration_multiplier*t.penetration_multiplier/1.25)*1.1-0.35))*1.1+0.25)/t.penetration_multiplier, 15)
					
					changes[table.getn(changes)+1] = string.format("  %s :: pen: %.2f rear_pen: %.2f pen*rear_pen: %.2f", i, t.penetration_multiplier, t.rear_penetration_multiplier, t.penetration_multiplier*t.rear_penetration_multiplier)
					changed = true
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
