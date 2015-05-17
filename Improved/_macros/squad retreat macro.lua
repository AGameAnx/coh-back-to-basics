function zeroFill(number)
	if number < 10 then
		return "0"..number
	end
	return numer
end
function each_file(rgd)
	if rgd.GameData and rgd.GameData.squad_retreat_ext then
		if not rgd.GameData.squad_ability_ext then
			print("@ "..rgd.name.." ERROR !!! ability_ext isn't available!")
		else
			print("@ "..rgd.name)
			for i=1,40 do -- look for empty ability slot
				local ability = "ability_"..zeroFill(i)
				if rgd.GameData.squad_ability_ext.abilities[ability] == "" then
					print("  >"..ability)
					rgd.GameData.squad_ability_ext.abilities[ability] = "abilities\\retreat_ability.lua"
					break
				end
			end
			--rgd:save()
		end
	end
end

function at_end()
end
