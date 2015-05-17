function each_file(rgd)
	if rgd.GameData and rgd.GameData.weapon_bag then
		local bag = rgd.GameData.weapon_bag

		bag.cover_table.tp_trench.accuracy_multiplier = 0.5
		bag.cover_table.tp_trench.damage_multiplier = 0.55
		
		print(rgd.name)
		--rgd:save()
	end
end

function at_end()
end
