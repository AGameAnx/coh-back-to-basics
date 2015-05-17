function each_file(rgd)
	if rgd.GameData and rgd.GameData.weapon_bag.range then
		local range = rgd.GameData.weapon_bag.range
		if range.max == 60 then
			range.min == 0
			range.mid.short = 25
			range.mid.medium = 40
			range.mid.long = 50
			range.mid.distant = 60
			print(rgd.name)
			--rgd:save()
		end
	end
end

function at_end()
endgi