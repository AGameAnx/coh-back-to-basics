local tablesToModify = {
	"tp_armour",
	"tp_armour_elite",
	"tp_armour_rear",
	"tp_vehicle"
}
function each_file(rgd)
	if rgd.GameData and rgd.GameData.weapon_bag then
		local crit = rgd.GameData.weapon_bag.critical_table
		print("@ "..rgd.name)
		local changes = false
		for t in pairs(crit) do
			if t ~= "$REF" then
				local modifyCurrent = false
				for i=1,table.getn(tablesToModify) do
					if tablesToModify[i] == t then
						modifyCurrent = true
						break
					end
				end
				if modifyCurrent then
					for hit in pairs(crit[t].critical_table_03) do
						if hit ~= "$REF" and hit ~= "damage_bound"
								and crit[t].critical_table_03[hit].weight > 0
								and crit[t].critical_table_03[hit].critical_type["$REF"] == "critical_type\\critical_single.lua"
								and crit[t].critical_table_03[hit].critical_type.critical == "critical\\_no_critical.lua" then
							crit[t].critical_table_03[hit].critical_type.critical = "critical\\vehicle_make_wreck.lua"
							print("  "..t..": hit "..hit.." (weight: "..crit[t].critical_table_03[hit].weight..")")
							changes = true
							break
						end
					end
				end
			end
		end
		if changes then
			--rgd:save()
		end
	end
end

function at_end()
end
