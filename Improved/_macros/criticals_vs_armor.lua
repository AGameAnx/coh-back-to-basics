function each_file(rgd)
	if rgd.GameData.weapon_bag then
		local wb = rgd.GameData.weapon_bag
		local changesMade = false
		if wb.critical_table.tp_armour.critical_table_02.hit_01.critical_type.critical == 'critical\\_no_critical.lua'
				and wb.critical_table.tp_armour.critical_table_02.hit_01.weight == 35
				and wb.critical_table.tp_armour.critical_table_02.hit_02.critical_type.critical == 'critical\\vehicle_damage_engine.lua'
				and wb.critical_table.tp_armour.critical_table_02.hit_02.weight == 42
				and wb.critical_table.tp_armour.critical_table_02.hit_03.critical_type.critical == 'critical\\vehicle_lose_treads_or_wheels.lua'
				and wb.critical_table.tp_armour.critical_table_02.hit_03.weight == 15
				and wb.critical_table.tp_armour.critical_table_02.hit_04.critical_type.critical == 'critical\\vehicle_damage_maingun.lua'
				and wb.critical_table.tp_armour.critical_table_02.hit_04.weight == 8 then
			print(rgd.name..' -- tp_armour')
			wb.critical_table.tp_armour.critical_table_02.hit_01.weight = 40
			wb.critical_table.tp_armour.critical_table_02.hit_02.weight = 42
			wb.critical_table.tp_armour.critical_table_02.hit_03.weight = 10
			wb.critical_table.tp_armour.critical_table_02.hit_04.weight = 8
			changesMade = true
		end
		if wb.critical_table.tp_armour_elite.critical_table_02.hit_01.critical_type.critical == 'critical\\_no_critical.lua'
				and wb.critical_table.tp_armour_elite.critical_table_02.hit_01.weight == 35
				and wb.critical_table.tp_armour_elite.critical_table_02.hit_02.critical_type.critical == 'critical\\vehicle_damage_engine.lua'
				and wb.critical_table.tp_armour_elite.critical_table_02.hit_02.weight == 42
				and wb.critical_table.tp_armour_elite.critical_table_02.hit_03.critical_type.critical == 'critical\\vehicle_lose_treads_or_wheels.lua'
				and wb.critical_table.tp_armour_elite.critical_table_02.hit_03.weight == 15
				and wb.critical_table.tp_armour_elite.critical_table_02.hit_04.critical_type.critical == 'critical\\vehicle_damage_maingun.lua'
				and wb.critical_table.tp_armour_elite.critical_table_02.hit_04.weight == 8 then
			print(rgd.name..' -- tp_armour_elite')
			wb.critical_table.tp_armour_elite.critical_table_02.hit_01.weight = 40
			wb.critical_table.tp_armour_elite.critical_table_02.hit_02.weight = 42
			wb.critical_table.tp_armour_elite.critical_table_02.hit_03.weight = 10
			wb.critical_table.tp_armour_elite.critical_table_02.hit_04.weight = 8
			changesMade = true
		end
		if wb.critical_table.tp_armour_rear.critical_table_02.hit_01.critical_type.critical == 'critical\\_no_critical_rear.lua'
				and wb.critical_table.tp_armour_rear.critical_table_02.hit_01.weight == 20
				and wb.critical_table.tp_armour_rear.critical_table_02.hit_02.critical_type.critical == 'critical\\vehicle_destroy_engine_rear.lua'
				and wb.critical_table.tp_armour_rear.critical_table_02.hit_02.weight == 15
				and wb.critical_table.tp_armour_rear.critical_table_02.hit_03.critical_type.critical == 'critical\\vehicle_damage_engine.lua'
				and wb.critical_table.tp_armour_rear.critical_table_02.hit_03.weight == 15
				and wb.critical_table.tp_armour_rear.critical_table_02.hit_04.critical_type.critical == ''
				and wb.critical_table.tp_armour_rear.critical_table_02.hit_04.weight == 50 then
			print(rgd.name..' -- tp_armour_rear')
			wb.critical_table.tp_armour_rear.critical_table_02.hit_01.weight = 20
			wb.critical_table.tp_armour_rear.critical_table_02.hit_02.weight = 15
			wb.critical_table.tp_armour_rear.critical_table_02.hit_03.weight = 15
			wb.critical_table.tp_armour_rear.critical_table_02.hit_04.weight = 50
			changesMade = true
		end
		
		if changesMade then
			--rgd:save()
		end
	end
end

function at_end()
end
