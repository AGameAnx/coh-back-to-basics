function each_file(rgd)
	if rgd.GameData and rgd.GameData.cost_ext.upkeep.fuel != 0 then
		local upkeep = rgd.GameData.cost_ext.upkeep
		local popcap = rgd.GameData.population_ext
		upkeep.fuel = upkeep.fuel / popcap.personnel_pop
		print(rgd.name)
		--rgd:save()
	end
end

function at_end()
end