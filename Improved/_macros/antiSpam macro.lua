local affectedByAntispam = true
local antispam = {
	"attrib\\attrib\\ebps\\races\\allies\\soldiers\\airborne_infantry.rgd",
	"attrib\\attrib\\ebps\\races\\allies\\soldiers\\airborne_infantry_corporal.rgd",
	"attrib\\attrib\\ebps\\races\\allies\\soldiers\\airborne_infantry_garand.rgd",
	"attrib\\attrib\\ebps\\races\\allies\\soldiers\\airborne_infantry_tech.rgd",
	"attrib\\attrib\\ebps\\races\\allies\\soldiers\\airborne_infantry_lieutenant.rgd",
	"attrib\\attrib\\ebps\\races\\allies\\soldiers\\airborne_infantry_sergeant.rgd",
	"attrib\\attrib\\ebps\\races\\allies\\soldiers\\engineer_logistic.rgd",
	"attrib\\attrib\\ebps\\races\\allies\\soldiers\\infantry_rifleman.rgd",
	"attrib\\attrib\\ebps\\races\\allies\\soldiers\\infantry_rifleman_sergeant.rgd",
	"attrib\\attrib\\ebps\\races\\allies\\soldiers\\infantry_rifleman_reinforcement.rgd",
	"attrib\\attrib\\ebps\\races\\allies\\soldiers\\infantry_rifleman_sergeant_reinforcement.rgd",
	"attrib\\attrib\\ebps\\races\\allies\\soldiers\\ranger.rgd",
	"attrib\\attrib\\ebps\\races\\allies\\soldiers\\ranger_bazooka.rgd",
	"attrib\\attrib\\ebps\\races\\allies\\soldiers\\rifleman_logistic.rgd",
	"attrib\\attrib\\ebps\\races\\allies\\soldiers\\rifleman_logistic_sergeant.rgd",
	"attrib\\attrib\\ebps\\races\\allies_commonwealth\\soldiers\\canadian.rgd",
	"attrib\\attrib\\ebps\\races\\allies_commonwealth\\soldiers\\canadian_kangaroo.rgd",
	"attrib\\attrib\\ebps\\races\\allies_commonwealth\\soldiers\\commando.rgd",
	"attrib\\attrib\\ebps\\races\\allies_commonwealth\\soldiers\\commando_bren.rgd",
	"attrib\\attrib\\ebps\\races\\allies_commonwealth\\soldiers\\commando_enfield.rgd",
	"attrib\\attrib\\ebps\\races\\allies_commonwealth\\soldiers\\commando_piat.rgd",
	"attrib\\attrib\\ebps\\races\\allies_commonwealth\\soldiers\\commando_thompson.rgd",
	"attrib\\attrib\\ebps\\races\\allies_commonwealth\\soldiers\\piper.rgd",
	"attrib\\attrib\\ebps\\races\\allies_commonwealth\\soldiers\\sapper.rgd",
	"attrib\\attrib\\ebps\\races\\allies_commonwealth\\soldiers\\tommy.rgd",
	"attrib\\attrib\\ebps\\races\\allies_commonwealth\\soldiers\\tommy_bagpiper.rgd",
	"attrib\\attrib\\ebps\\races\\allies_commonwealth\\soldiers\\tommy_bagpiper_boys_at.rgd",
	"attrib\\attrib\\ebps\\races\\allies_commonwealth\\soldiers\\tommy_boys_at.rgd",
	"attrib\\attrib\\ebps\\races\\allies_commonwealth\\soldiers\\tommy_sergeant.rgd",
	"attrib\\attrib\\ebps\\races\\axis\\soldiers\\grenadier.rgd",
	"attrib\\attrib\\ebps\\races\\axis\\soldiers\\grenadier_leader.rgd",
	"attrib\\attrib\\ebps\\races\\axis\\soldiers\\knights_cross_holder.rgd",
	"attrib\\attrib\\ebps\\races\\axis\\soldiers\\stormtrooper_grenadier.rgd",
	"attrib\\attrib\\ebps\\races\\axis\\soldiers\\stormtrooper_grenadier_leader.rgd",
	"attrib\\attrib\\ebps\\races\\axis\\soldiers\\volksgrenadier.rgd",
	"attrib\\attrib\\ebps\\races\\axis\\soldiers\\volksgrenadier_leader.rgd",
	"attrib\\attrib\\ebps\\races\\axis\\soldiers\\waffen_ss.rgd",
	"attrib\\attrib\\ebps\\races\\axis\\soldiers\\waffen_ss_leader.rgd",
	"attrib\\attrib\\ebps\\races\\axis\\soldiers\\waffen_ss.rgd",
	"attrib\\attrib\\ebps\\races\\axis_panzer_elite\\soldiers\\fallshirmjager.rgd",
	"attrib\\attrib\\ebps\\races\\axis_panzer_elite\\soldiers\\fallshirmjager_leader.rgd",
	"attrib\\attrib\\ebps\\races\\axis_panzer_elite\\soldiers\\luftwaffe.rgd",
	"attrib\\attrib\\ebps\\races\\axis_panzer_elite\\soldiers\\luftwaffe_leader.rgd",
	"attrib\\attrib\\ebps\\races\\axis_panzer_elite\\soldiers\\panzer_grenadier.rgd",
	"attrib\\attrib\\ebps\\races\\axis_panzer_elite\\soldiers\\panzer_grenadier_leader.rgd",
	"attrib\\attrib\\ebps\\races\\axis_panzer_elite\\soldiers\\panzer_grenadier_elite.rgd",
	"attrib\\attrib\\ebps\\races\\axis_panzer_elite\\soldiers\\repair_infantry.rgd",
	"attrib\\attrib\\ebps\\races\\axis_panzer_elite\\soldiers\\repair_infantry_leader.rgd",
	"attrib\\attrib\\ebps\\races\\axis_panzer_elite\\soldiers\\shocktrooper.rgd",
	"attrib\\attrib\\ebps\\races\\axis_panzer_elite\\soldiers\\shocktrooper_leader.rgd",
}
local results,n = {},0
function each_file(rgd)
	local show
	if affectedByAntispam then
		show = false
		for i=1,table.getn(antispam) do
			if antispam[i] == rgd.path then
				show = true
				break
			end
		end
	else
		show = true
	end
	
	if show and rgd.GameData.type_ext.unit_type_list.unit_type04 then
		local type = rgd.GameData.type_ext.unit_type_list
		type.unit_type04 = "antispam"
		print(rgd.name)
		--rgd:save()
	end
end

function at_end()
end