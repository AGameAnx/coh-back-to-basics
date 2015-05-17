function each_file(rgd)
	if rgd.GameData and rgd.GameData.weapon_bag.range then
		local range = rgd.GameData.weapon_bag.range
		if range.max > 45 and range.max < 57 then
			print('')
			print(rgd.name)
			print('range: ['..range.min..', '..range.max..']')
			print('  short: '..range.mid.short)
			print('  medium: '..range.mid.medium)
			print('  long: '..range.mid.long)
			print('  distant: '..range.mid.distant)
			range.mid.short = math.ceil(range.mid.short * 0.886)
			range.mid.medium = math.ceil(range.mid.medium * 0.886)
			range.mid.long = math.ceil(range.mid.long * 0.886)
			range.mid.distant = math.ceil(range.mid.distant * 0.886)
			range.max = math.ceil(range.max * 0.886)
			print('  ---> ')
			print('range: ['..range.min..', '..range.max..']')
			print('  short: '..range.mid.short)
			print('  medium: '..range.mid.medium)
			print('  long: '..range.mid.long)
			print('  distant: '..range.mid.distant)
			--rgd:save()
		end
	end
end

function at_end()
end
