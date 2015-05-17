local exclude_files = {
	"attrib\\attrib\\weapon\\allies\\ballistic_weapon\\tank_gun\\cw_smoke_discharges.rgd",
	"attrib\\attrib\\weapon\\allies\\ballistic_weapon\\tank_gun\\smoke_discharges.rgd",
	"attrib\\attrib\\weapon\\allies\\ballistic_weapon\\tank_gun\\m4_105mm_sherman_gun.rgd",
	"attrib\\attrib\\weapon\\allies\\ballistic_weapon\\tank_gun\\m6_37mm_greyhound_gun.rgd",
	"attrib\\attrib\\weapon\\allies\\ballistic_weapon\\tank_gun\\m6_37mm_greyhound_gun_staghound.rgd",
	"attrib\\attrib\\weapon\\allies\\ballistic_weapon\\tank_gun\\m6_37mm_greyhound_gun_staghound_stun.rgd",

	"attrib\\attrib\\weapon\\allies_cw\\ballistic_weapon\\tank_gun\\cw_40mm_bofors_aa_gun.rgd",
	"attrib\\attrib\\weapon\\allies_cw\\ballistic_weapon\\tank_gun\\cw_2_pounder_tetrarch_gun.rgd",
	"attrib\\attrib\\weapon\\allies_cw\\ballistic_weapon\\tank_gun\\cw_close_support_tetrarch_gun.rgd",
	"attrib\\attrib\\weapon\\allies_cw\\ballistic_weapon\\tank_gun\\cw_avre_churchill_gun.rgd",
	"attrib\\attrib\\weapon\\allies_cw\\ballistic_weapon\\tank_gun\\cw_avre_churchill_gun_anti_building.rgd",
	"attrib\\attrib\\weapon\\allies_cw\\ballistic_weapon\\tank_gun\\cw_command_smoke_launcher.rgd",
	"attrib\\attrib\\weapon\\allies_cw\\ballistic_weapon\\tank_gun\\cw_m6_37mm_staghound_gun.rgd",
	"attrib\\attrib\\weapon\\allies_cw\\ballistic_weapon\\tank_gun\\cw_m6_37mm_stuart_canister_ammunition.rgd",
	"attrib\\attrib\\weapon\\allies_cw\\ballistic_weapon\\tank_gun\\cw_m6_37mm_stuart_canister_dot_weapon.rgd",
	"attrib\\attrib\\weapon\\allies_cw\\ballistic_weapon\\tank_gun\\cw_m6_37mm_stuart_gun.rgd",
	"attrib\\attrib\\weapon\\allies_cw\\ballistic_weapon\\tank_gun\\villers_bocage_dot_weapon.rgd",
	"attrib\\attrib\\weapon\\allies_cw\\ballistic_weapon\\tank_gun\\cw_tetrarch_smoke_launcher.rgd",
	"attrib\\attrib\\weapon\\allies_cw\\ballistic_weapon\\tank_gun\\cw_tetrarch_smoke_launcher_2.rgd",
	"attrib\\attrib\\weapon\\allies_cw\\ballistic_weapon\\tank_gun\\la_fiere_cw_m6_37mm_stuart_canister_ammunition.rgd",

	"attrib\\attrib\\weapon\\axis\\ballistic_weapon\\anti_tank_gun\\flak36_88mm_arty.rgd",
	"attrib\\attrib\\weapon\\axis\\ballistic_weapon\\tank_gun\\flak38_20mm_light_gun.rgd",
	"attrib\\attrib\\weapon\\axis\\ballistic_weapon\\tank_gun\\flak38_20mm_light_gun_m02.rgd",
	"attrib\\attrib\\weapon\\axis\\ballistic_weapon\\tank_gun\\flak38_20mm_light_gun_sp_m07.rgd",
	"attrib\\attrib\\weapon\\axis\\ballistic_weapon\\tank_gun\\flak38_wirblewind.rgd",
	"attrib\\attrib\\weapon\\axis\\ballistic_weapon\\tank_gun\\flak_43_37mm_aa_ostwind_gun.rgd",
	"attrib\\attrib\\weapon\\axis\\ballistic_weapon\\tank_gun\\kwk38_20mm_light_armoured_car_gun.rgd",
	"attrib\\attrib\\weapon\\axis\\ballistic_weapon\\tank_gun\\stuh42_105mm_stug_gun.rgd",
	"attrib\\attrib\\weapon\\axis\\ballistic_weapon\\tank_gun\\stuh42_105mm_haubitze_gun.rgd",
	"attrib\\attrib\\weapon\\axis\\ballistic_weapon\\tank_gun\\37mm_hotchkiss_gun.rgd",
	"attrib\\attrib\\weapon\\axis\\ballistic_weapon\\tank_gun\\kwk39_50mm_puma_gun.rgd",
	"attrib\\attrib\\weapon\\axis\\ballistic_weapon\\tank_gun\\villers_bocage_kwk36_88mm_tiger_gun_he.rgd",
	"attrib\\attrib\\weapon\\axis\\ballistic_weapon\\tank_gun\\villers_bocage_kwk36_88mm_tiger_gun_he_double.rgd",
	"attrib\\attrib\\weapon\\axis\\ballistic_weapon\\tank_gun\\villers_bocage_kwk36_88mm_tiger_gun_pzgr.rgd",
	"attrib\\attrib\\weapon\\axis\\ballistic_weapon\\tank_gun\\villers_bocage_kwk36_88mm_tiger_gun_pzgr_double.rgd",
	"attrib\\attrib\\weapon\\axis\\ballistic_weapon\\tank_gun\\villers_bocage_kwk36_88mm_tiger_gun_regular.rgd",
	"attrib\\attrib\\weapon\\axis\\ballistic_weapon\\tank_gun\\villers_bocage_smoke_launcher_weapon.rgd",
	"attrib\\attrib\\weapon\\axis\\ballistic_weapon\\tank_gun\\villers_bocage_smoke_launcher_weapon_secondary.rgd",
	"attrib\\attrib\\weapon\\axis\\ballistic_weapon\\tank_gun\\villers_bocage_smoke_launcher_weapon_secondary_2.rgd",

	"attrib\\attrib\\weapon\\axis_pe\\ballistic_weapon\\anti_tank_gun\\37mm_pak_35_halftrack.rgd.rgd",
	"attrib\\attrib\\weapon\\axis_pe\\ballistic_weapon\\anti_tank_gun\\37mm_pak_35_halftrack_tread_breaker.rgd",
	"attrib\\attrib\\weapon\\axis_pe\\ballistic_weapon\\tank_gun\\pe_flak38_20mm_light_gun.rgd",
	"attrib\\attrib\\weapon\\axis_pe\\ballistic_weapon\\tank_gun\\pe_flak38_20mm_light_gun_caen_sp.rgd",
	"attrib\\attrib\\weapon\\axis_pe\\ballistic_weapon\\tank_gun\\pe_flak38_20mm_luftwaffe.rgd",
	"attrib\\attrib\\weapon\\axis_pe\\ballistic_weapon\\tank_gun\\flak38_20mm_gun.rgd",
	"attrib\\attrib\\weapon\\axis_pe\\ballistic_weapon\\tank_gun\\kwk38_20mm_sdkfz_222.rgd",
	"attrib\\attrib\\weapon\\axis_pe\\ballistic_weapon\\tank_gun\\kwk38_20mm_sdkfz_250_9.rgd",
	"attrib\\attrib\\weapon\\axis_pe\\ballistic_weapon\\tank_gun\\kwk39_50mm_h35_upgun.rgd",

}
function each_file(rgd)
	for i=1,table.getn(exclude_files) do
		if exclude_files[i] == rgd.path then
			
			return
		end
	end
	if rgd.GameData and rgd.GameData.weapon_bag then
		local averageDamage = math.floor((rgd.GameData.weapon_bag.damage.max+rgd.GameData.weapon_bag.damage.min)/2*100+0.5)/100
		rgd.GameData.weapon_bag.damage.min = math.max(1, averageDamage-10)
		rgd.GameData.weapon_bag.damage.max = averageDamage+10
		print("["..rgd.path.."] min:"..rgd.GameData.weapon_bag.damage.min.." max:"..rgd.GameData.weapon_bag.damage.max)
		--rgd:save()
	end
end

function at_end()
end
