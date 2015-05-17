function each_file(rgd)
	if rgd.GameData and rgd.GameData.squad_ability_ext then
		for i,v in pairs(rgd.GameData.squad_ability_ext.abilities) do
			if v == "abilities\\antispam_ability.lua" then
				print(rgd.name)
			end
		end
	end
end

function at_end()
end
