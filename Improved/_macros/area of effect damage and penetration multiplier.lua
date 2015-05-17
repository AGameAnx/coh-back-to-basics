function each_file(rgd)
	if rgd.GameData.weapon_bag then
		local wb = rgd.GameData.weapon_bag
		if wb.area_effect.area_info.radius > 0 then
			local changesMade = false
			
			if wb.area_effect.damage.distant < 1 then
				print(rgd.name)
				print('  damage.distant: '..string.format('%.2f', wb.area_effect.damage.distant)..' -> '..string.format('%.2f', wb.area_effect.damage.distant * 0.9))
				wb.area_effect.damage.distant = tonumber(string.format('%.2f', wb.area_effect.damage.distant * 0.9))
				changesMade = true
			end
			if wb.area_effect.damage.long < 1 then
				if not changesMade then
					print(rgd.name)
				end
				print('  damage.long: '..string.format('%.2f', wb.area_effect.damage.long)..' -> '..string.format('%.2f', wb.area_effect.damage.long * 0.9))
				wb.area_effect.damage.long = tonumber(string.format('%.2f', wb.area_effect.damage.long * 0.9))
				changesMade = true
			end
			if wb.area_effect.damage.medium < 1 then
				if not changesMade then
					print(rgd.name)
				end
				print('  damage.medium: '..string.format('%.2f', wb.area_effect.damage.medium)..' -> '..string.format('%.2f', wb.area_effect.damage.medium * 0.9))
				wb.area_effect.damage.medium = tonumber(string.format('%.2f', wb.area_effect.damage.medium * 0.9))
				changesMade = true
			end
			
			if wb.area_effect.damage_friendly.distant < 1 then
				if not changesMade then
					print(rgd.name)
				end
				print('  damage_friendly.distant: '..string.format('%.2f', wb.area_effect.damage_friendly.distant)..' -> '..string.format('%.2f', wb.area_effect.damage_friendly.distant * 0.9))
				wb.area_effect.damage_friendly.distant = tonumber(string.format('%.2f', wb.area_effect.damage_friendly.distant * 0.9))
				changesMade = true
			end
			if wb.area_effect.damage_friendly.long < 1 then
				if not changesMade then
					print(rgd.name)
				end
				print('  damage_friendly.long: '..string.format('%.2f', wb.area_effect.damage_friendly.long)..' -> '..string.format('%.2f', wb.area_effect.damage_friendly.long * 0.9))
				wb.area_effect.damage_friendly.long = tonumber(string.format('%.2f', wb.area_effect.damage_friendly.long * 0.9))
				changesMade = true
			end
			if wb.area_effect.damage_friendly.medium < 1 then
				if not changesMade then
					print(rgd.name)
				end
				print('  damage_friendly.medium: '..string.format('%.2f', wb.area_effect.damage_friendly.medium)..' -> '..string.format('%.2f', wb.area_effect.damage_friendly.medium * 0.9))
				wb.area_effect.damage_friendly.medium = tonumber(string.format('%.2f', wb.area_effect.damage_friendly.medium * 0.9))
				changesMade = true
			end
			
			if wb.area_effect.penetration.distant < 1 then
				if not changesMade then
					print(rgd.name)
				end
				print('  penetration.distant: '..string.format('%.2f', wb.area_effect.penetration.distant)..' -> '..string.format('%.2f', wb.area_effect.penetration.distant * 0.9))
				wb.area_effect.penetration.distant = tonumber(string.format('%.2f', wb.area_effect.penetration.distant * 0.9))
				changesMade = true
			end
			if wb.area_effect.penetration.long < 1 then
				if not changesMade then
					print(rgd.name)
				end
				print('  penetration.long: '..string.format('%.2f', wb.area_effect.penetration.long)..' -> '..string.format('%.2f', wb.area_effect.penetration.long * 0.9))
				wb.area_effect.penetration.long = tonumber(string.format('%.2f', wb.area_effect.penetration.long * 0.9))
				changesMade = true
			end
			if wb.area_effect.penetration.medium < 1 then
				if not changesMade then
					print(rgd.name)
				end
				print('  penetration.medium: '..string.format('%.2f', wb.area_effect.penetration.medium)..' -> '..string.format('%.2f', wb.area_effect.penetration.medium * 0.9))
				wb.area_effect.penetration.medium = tonumber(string.format('%.2f', wb.area_effect.penetration.medium * 0.9))
				changesMade = true
			end
			
			if changesMade then
				--rgd:save()
			end
		end
	end
end

function at_end()
end
