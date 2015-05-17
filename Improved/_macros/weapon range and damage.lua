function each_file(rgd)
	if rgd.GameData.weapon_bag then
		local d = rgd.GameData.weapon_bag.damage
		local r = rgd.GameData.weapon_bag.range
		
		print(rgd.name)
		
		local changeScale = math.min(1, math.max(0, (r.max-32)/8))
		local rangeChanged = r.max > 32
		local damageChanged = r.max < 40
		if rangeChanged then
			print('  RANGE')
			print('    max: '..r.max)
			print('    mid.distant: '..r.mid.distant)
			print('    mid.long: '..r.mid.long)
			print('    mid.medium: '..r.mid.medium)
			print('    mid.short: '..r.mid.short)
		end
		if damageChanged then
			print('  DAMAGE')
			print('    max: '..d.max)
			print('    min: '..d.min)
		end
		print('  -->')
		
		r.max         = math.ceil(r.max         - r.max         * (1 - 1 / 1.12) * changeScale)
		r.mid.distant = math.ceil(r.mid.distant - r.mid.distant * (1 - 1 / 1.12) * changeScale)
		r.mid.long    = math.ceil(r.mid.long    - r.mid.long    * (1 - 1 / 1.115) * changeScale)
		r.mid.medium  = math.ceil(r.mid.medium  - r.mid.medium  * (1 - 1 / 1.105) * changeScale)
		r.mid.short   = math.ceil(r.mid.short   - r.mid.short   * (1 - 1 / 1.055) * changeScale)
		
		d.max = math.ceil(d.max - d.max * (1 - 1 / 1.115) * (1-changeScale))
		d.min = math.ceil(d.min - d.min * (1 - 1 / 1.115) * (1-changeScale))
		
		if rangeChanged then
			print('  RANGE')
			print('    max: '..r.max)
			print('    mid.distant: '..r.mid.distant)
			print('    mid.long: '..r.mid.long)
			print('    mid.medium: '..r.mid.medium)
			print('    mid.short: '..r.mid.short)
		end
		if damageChanged then
			print('  DAMAGE')
			print('    max: '..d.max)
			print('    min: '..d.min)
		end
		--rgd:save()
	end
end

function at_end()
end
