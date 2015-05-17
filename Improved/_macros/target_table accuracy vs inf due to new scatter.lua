
local multiplier = 1 / 0.75

function each_file(rgd)
	if rgd.GameData.weapon_bag then
		local wb = rgd.GameData.weapon_bag
		if wb.scatter.angle_scatter == 4.5 and wb.scatter.distance_scatter_max == 7 then
			print(rgd.name)
			print('  tp_infantry: '..string.format('%.2f -> %.2f', wb.target_table.tp_infantry.accuracy_multiplier, wb.target_table.tp_infantry.accuracy_multiplier * multiplier))
			print('  tp_infantry_airborne: '..string.format('%.2f -> %.2f', wb.target_table.tp_infantry_airborne.accuracy_multiplier, wb.target_table.tp_infantry_airborne.accuracy_multiplier * multiplier))
			print('  tp_infantry_heroic: '..string.format('%.2f -> %.2f', wb.target_table.tp_infantry_heroic.accuracy_multiplier, wb.target_table.tp_infantry_heroic.accuracy_multiplier * multiplier))
			print('  tp_infantry_riflemen_elite: '..string.format('%.2f -> %.2f', wb.target_table.tp_infantry_riflemen_elite.accuracy_multiplier, wb.target_table.tp_infantry_riflemen_elite.accuracy_multiplier * multiplier))
			print('  tp_infantry_sniper: '..string.format('%.2f -> %.2f', wb.target_table.tp_infantry_sniper.accuracy_multiplier, wb.target_table.tp_infantry_sniper.accuracy_multiplier * multiplier))
			print('  tp_infantry_soldier: '..string.format('%.2f -> %.2f', wb.target_table.tp_infantry_soldier.accuracy_multiplier, wb.target_table.tp_infantry_soldier.accuracy_multiplier * multiplier))
			wb.target_table.tp_infantry.accuracy_multiplier = tonumber(string.format('%.2f', wb.target_table.tp_infantry.accuracy_multiplier * multiplier))
			wb.target_table.tp_infantry_airborne.accuracy_multiplier = tonumber(string.format('%.2f', wb.target_table.tp_infantry_airborne.accuracy_multiplier * multiplier))
			wb.target_table.tp_infantry_heroic.accuracy_multiplier = tonumber(string.format('%.2f', wb.target_table.tp_infantry_heroic.accuracy_multiplier * multiplier))
			wb.target_table.tp_infantry_riflemen_elite.accuracy_multiplier = tonumber(string.format('%.2f', wb.target_table.tp_infantry_riflemen_elite.accuracy_multiplier * multiplier))
			wb.target_table.tp_infantry_sniper.accuracy_multiplier = tonumber(string.format('%.2f', wb.target_table.tp_infantry_sniper.accuracy_multiplier * multiplier))
			wb.target_table.tp_infantry_soldier.accuracy_multiplier = tonumber(string.format('%.2f', wb.target_table.tp_infantry_soldier.accuracy_multiplier * multiplier))
			--rgd:save()
		end
	end
end

function at_end()
end
