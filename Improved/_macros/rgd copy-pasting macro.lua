function pLoadRgd(path)
	local loaded, rgd = pcall(loadRgd, path)
	if loaded and rgd then
		return rgd
	elseif rgd then
		print("Error: Cannot load RGD "..path.."\n  - Stack trace:\n"..rgd) return nil
	else
		print("Error: Not permitted to load RGD "..path) return nil
	end
end

local showWeaponsOfInterestOnly = true
local weaponsOfInterest = {
	"attrib\\attrib\\weapon\\allies\\ballistic_weapon\\tank_gun\\76mm_hellcat_gun.rgd",
	"attrib\\attrib\\weapon\\allies\\ballistic_weapon\\tank_gun\\m1a1c_76mm_sherman_upgunned.rgd",
	"attrib\\attrib\\weapon\\allies\\ballistic_weapon\\tank_gun\\m3_75mm_m4_sherman_gun.rgd",
	"attrib\\attrib\\weapon\\allies\\ballistic_weapon\\tank_gun\\m3_75mm_m8_scott_howitzer.rgd",
	"attrib\\attrib\\weapon\\allies\\ballistic_weapon\\tank_gun\\m3_90mm_M36_gun.rgd",
	"attrib\\attrib\\weapon\\allies\\ballistic_weapon\\tank_gun\\m3_90mm_pershing_gun.rgd",
	"attrib\\attrib\\weapon\\allies\\ballistic_weapon\\tank_gun\\m6_37mm_greyhound_gun.rgd",
	"attrib\\attrib\\weapon\\allies\\ballistic_weapon\\tank_gun\\m6_37mm_greyhound_gun_staghound.rgd",
	"attrib\\attrib\\weapon\\allies\\ballistic_weapon\\tank_gun\\m7_3in_m10_gun.rgd",
	"attrib\\attrib\\weapon\\allies\\ballistic_weapon\\anti_tank_gun\\m1_57mm_atg.rgd",
	"attrib\\attrib\\weapon\\allies\\ballistic_weapon\\anti_tank_gun\\m5_76mm_atg.rgd",

	"attrib\\attrib\\weapon\\allies_cw\\ballistic_weapon\\tank_gun\\cw_17_pounder_firefly_gun.rgd",
	"attrib\\attrib\\weapon\\allies_cw\\ballistic_weapon\\tank_gun\\cw_2_pounder_tetrarch_gun.rgd",
	"attrib\\attrib\\weapon\\allies_cw\\ballistic_weapon\\tank_gun\\cw_40mm_bofors_aa_gun.rgd",
	"attrib\\attrib\\weapon\\allies_cw\\ballistic_weapon\\tank_gun\\cw_m6_37mm_staghound_gun.rgd",
	"attrib\\attrib\\weapon\\allies_cw\\ballistic_weapon\\tank_gun\\cw_m6_37mm_stuart_gun.rgd",
	"attrib\\attrib\\weapon\\allies_cw\\ballistic_weapon\\tank_gun\\cw_oqf_75mm_cromwell_gun.rgd",
	"attrib\\attrib\\weapon\\allies_cw\\ballistic_weapon\\tank_gun\\cw_qf_6_pdr_churchill_gun.rgd",
	"attrib\\attrib\\weapon\\allies_cw\\ballistic_weapon\\anti_tank_gun\\cw_17_pounder_at.rgd",

	"attrib\\attrib\\weapon\\axis\\ballistic_weapon\\tank_gun\\128mm_jagdtiger_gun.rgd",
	"attrib\\attrib\\weapon\\axis\\ballistic_weapon\\tank_gun\\37mm_hotchkiss_gun.rgd",
	"attrib\\attrib\\weapon\\axis\\ballistic_weapon\\tank_gun\\kwk36_88mm_tiger_gun.rgd",
	"attrib\\attrib\\weapon\\axis\\ballistic_weapon\\tank_gun\\kwk37_pziv_short_barrel.rgd",
	"attrib\\attrib\\weapon\\axis\\ballistic_weapon\\tank_gun\\kwk39_50mm_puma_gun.rgd",
	"attrib\\attrib\\weapon\\axis\\ballistic_weapon\\tank_gun\\kwk40_75mm_pziv_gun.rgd",
	"attrib\\attrib\\weapon\\axis\\ballistic_weapon\\tank_gun\\kwk42_75mm_panther_gun.rgd",
	"attrib\\attrib\\weapon\\axis\\ballistic_weapon\\tank_gun\\stuk40_75mm_stug_gun.rgd",
	"attrib\\attrib\\weapon\\axis_pe\\ballistic_weapon\\tank_gun\\pak43_88mm_kingtiger_gun.rgd",
	"attrib\\attrib\\weapon\\axis\\ballistic_weapon\\anti_tank_gun\\50mm_pak_38.rgd",
	"attrib\\attrib\\weapon\\axis\\ballistic_weapon\\anti_tank_gun\\75mm_pak_40_geschutzwagen.rgd",
	"attrib\\attrib\\weapon\\axis\\ballistic_weapon\\anti_tank_gun\\flak36_88mm_atg.rgd",

	"attrib\\attrib\\weapon\\axis_pe\\ballistic_weapon\\tank_gun\\apcr_pak39_hetzer_gun.rgd",
	"attrib\\attrib\\weapon\\axis_pe\\ballistic_weapon\\tank_gun\\apcr_pak43_88mm_jagdpanther_gun.rgd",
	"attrib\\attrib\\weapon\\axis_pe\\ballistic_weapon\\tank_gun\\apcr_pe_kwk40_75mm_pziv_gun.rgd",
	"attrib\\attrib\\weapon\\axis_pe\\ballistic_weapon\\tank_gun\\apcr_pe_kwk42_75mm_panther_gun.rgd",
	"attrib\\attrib\\weapon\\axis_pe\\ballistic_weapon\\tank_gun\\pak39_hetzer_gun.rgd",
	"attrib\\attrib\\weapon\\axis_pe\\ballistic_weapon\\tank_gun\\kwk39_50mm_h35_upgun.rgd",
	"attrib\\attrib\\weapon\\axis_pe\\ballistic_weapon\\tank_gun\\pak43_88mm_jagdpanther_gun.rgd",
	"attrib\\attrib\\weapon\\axis_pe\\ballistic_weapon\\tank_gun\\pak43_88mm_hummel.rgd",
	"attrib\\attrib\\weapon\\axis_pe\\ballistic_weapon\\anti_tank_gun\\37mm_pak_35_halftrack.rgd",
	"attrib\\attrib\\weapon\\axis_pe\\ballistic_weapon\\anti_tank_gun\\75mm_pak_40_marderiii.rgd",
	"attrib\\attrib\\weapon\\axis_pe\\ballistic_weapon\\anti_tank_gun\\apcr_37mm_pak_35_halftrack.rgd",
	"attrib\\attrib\\weapon\\axis_pe\\ballistic_weapon\\anti_tank_gun\\apcr_75mm_pak_40_marderiii.rgd",
}

local loadedRgd = pLoadRgd("attrib\\attrib\\kwk42_75mm_panther_gun.rgd")

function each_file(rgd)
	local show
	if showWeaponsOfInterestOnly then
		show = false
		for i=1,table.getn(weaponsOfInterest) do
			if weaponsOfInterest[i] == rgd.path then
				show = true
				break
			end
		end
	else
		show = true
	end

	if show and rgd.GameData.weapon_bag then
		rgd.GameData.weapon_bag.critical_table = loadedRgd.GameData.weapon_bag.critical_table
		print(rgd.name)
		rgd:save()
	end
end
		