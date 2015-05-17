local target_tables = {
	'tp_infantry',
	'tp_infantry_airborne',
	'tp_infantry_heroic',
	'tp_infantry_riflemen_elite',
	'tp_infantry_sniper',
	'tp_infantry_soldier'
}
function each_file(rgd)
	if rgd.GameData.weapon_bag then
		local wb = rgd.GameData.weapon_bag
		local madeChanges = false
		for v, i in pairs(target_tables) do
			if wb.target_table[i].damage_multiplier > 1.3 and wb.target_table[i].damage_multiplier < 1.7 then 
				wb.target_table[i].damage_multiplier = 1
				madeChanges = true
			end
		end
		if wb.area_effect.area_info.radius > 0 then
			wb.area_effect.accuracy.distant = 10
			wb.area_effect.accuracy.long = 10
			wb.area_effect.accuracy.medium = 10
			wb.area_effect.accuracy.short = 10
			madeChanges = true
		end
		if madeChanges then
			rgd:save()
		end
	end
end

function at_end()
end
