function each_file(rgd)
	if rgd.GameData.weapon_bag then
		local t = rgd.GameData.weapon_bag.critical_table.tp_infantry.critical_table_02
		local soldierKilledKey = -1
		local noCriticalKey = -1
		for i,v in pairs(t) do
			if i ~= '$REF' and i ~= 'damage_bound' then
				if t[i].critical_type.critical == 'critical\\make_casualty.lua' then
					soldierKilledKey = i
				end
				if t[i].critical_type.critical == 'critical\\_no_critical.lua' then
					noCriticalKey = i
				end
			end
		end
		if soldierKilledKey ~= -1 and noCriticalKey ~= -1 then
			if t[soldierKilledKey].weight == 5 then
				print(rgd.name)
				t[soldierKilledKey].weight = 0
				t[noCriticalKey].weight = t[noCriticalKey].weight + 5
				--rgd:save()
			end
		end
	end
end

function at_end() end
