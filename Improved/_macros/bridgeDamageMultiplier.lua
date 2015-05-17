function each_file(rgd)
	if rgd.GameData and rgd.GameData.weapon_bag.target_table.tp_bridge.damage_multiplier == 0.7 then
		local bridge = rgd.GameData.weapon_bag.target_table.tp_bridge
		bridge.damage_multiplier = 0.4
		print(rgd.name)
		--rgd:save()
	end
end

function at_end()
end