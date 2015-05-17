local skipUnits = {
	"sapper_squad.rgd",
	"infantry_piper_squad.rgd",
	"engineer_infantry.rgd",
	"engineer_infantry_reinforcement.rgd",
	"logistic_engineer_squad.rgd",
	"pioneer_squad.rgd",
	"luftwaffe_squad.rgd",
	"panzer_grenadier_squad.rgd",
	"panzer_grenadier_squad_elite.rgd",
	"panzer_grenadier_squad_forward_base.rgd",
	"repair_squad.rgd",
	"tankbuster_anti_infantry_squad.rgd",
	"tankbuster_anti_tank_squad.rgd",
}
function each_file(rgd)
	local skip = false
	for i=1,table.getn(skipUnits) do
		if skipUnits[i] == rgd.name then
			skip = true
			break
		end
	end
	if not skip then
		if rgd.GameData.squad_ability_ext then
			for i=1,40 do
				local index
				if i<10 then
					index = "0"..i
				else
					index = i
				end
				if rgd.GameData.squad_ability_ext.abilities["ability_"..index] and rgd.GameData.squad_ability_ext.abilities["ability_"..index] == "abilities\\reenable_capture_ability.lua" then
					print(rgd.name)
					rgd.GameData.squad_ability_ext.abilities["ability_"..index] = ""
					rgd:save()
				end
			end
		end
	end
end

function at_end()
end
