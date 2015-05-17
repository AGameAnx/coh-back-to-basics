function each_file(rgd)
	if rgd.GameData and rgd.GameData.weapon_bag then
		local madeChanges = false
		local p = "@ "..rgd.name.."\n"
		for i,t in pairs(rgd.GameData.weapon_bag.target_table) do
			local infantry = string.find(i, "_infantry")
			if i ~= "$REF" and not infantry and rgd.GameData.weapon_bag.target_table[i].moving_accuracy_multiplier > 0 and rgd.GameData.weapon_bag.target_table[i].moving_accuracy_multiplier < 0.95 then
				rgd.GameData.weapon_bag.target_table[i].moving_accuracy_multiplier = math.floor(
					(rgd.GameData.weapon_bag.target_table[i].moving_accuracy_multiplier + (1-rgd.GameData.weapon_bag.target_table[i].moving_accuracy_multiplier)*0.5)*100)/100
				
				p = p.."   "..i..": "..rgd.GameData.weapon_bag.target_table[i].moving_accuracy_multiplier.."\n"
				
				madeChanges = true
			end
		end
		if madeChanges then
			print(p)
			--rgd:save()
		end
	end
end

function at_end()
end
