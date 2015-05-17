function each_file(rgd)
	if rgd.GameData and rgd.GameData.weapon_bag then
		local wb = rgd.GameData.weapon_bag
		if wb.damage.min > 200 then -- wb.damage.min > 160 and wb.damage.min <= 200 then
			if wb.area_effect.distance.distant == wb.area_effect.distance.long then
				print("["..rgd.name.."]")
				
				wb.area_effect.area_info.radius = math.floor(wb.area_effect.area_info.radius*1050)/1000
				print("  radius: "..wb.area_effect.area_info.radius)
				
				wb.area_effect.distance.distant = math.floor(wb.area_effect.distance.distant*1050)/1000
				wb.area_effect.distance.long = math.floor(wb.area_effect.distance.long*975)/1000
				print("  distance: "..wb.area_effect.distance.distant..", "..wb.area_effect.distance.long)
				
				if wb.area_effect.damage.distant == wb.area_effect.damage.long then
					wb.area_effect.damage.distant = math.floor(wb.area_effect.damage.distant*500)/1000
					print("  damage: "..wb.area_effect.damage.distant..", "..math.floor(wb.area_effect.damage.long*100)/100)
				end
				if wb.area_effect.penetration.distant == wb.area_effect.penetration.long then
					wb.area_effect.penetration.distant = math.floor(wb.area_effect.penetration.distant*750)/1000
					print("  penetration: "..wb.area_effect.penetration.distant..", "..wb.area_effect.penetration.long)
				end
				
				if wb.area_effect.penetration.short > 0.95 then
					wb.area_effect.penetration.short = wb.area_effect.penetration.short*2
					print("  penetration short: "..wb.area_effect.penetration.short)
				end
				if wb.area_effect.penetration.medium > 0.7 then
					wb.area_effect.penetration.medium = math.floor((wb.area_effect.penetration.medium + (1-wb.area_effect.penetration.medium)*0.35)*100)/100
					print("  penetration medium: "..wb.area_effect.penetration.medium)
				end
				if wb.target_table.tp_slit_trench.penetration_multiplier > 1 then
					wb.target_table.tp_slit_trench.penetration_multiplier = 1
					print("  trench penetration: 1")
				end
				
				--rgd:save()
			end
		end
	end
end

function at_end()
end
