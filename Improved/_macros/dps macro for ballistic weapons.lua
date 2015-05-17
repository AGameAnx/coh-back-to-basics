local showWeaponsOfInterestOnly = true
local weaponsOfInterest = {
	"attrib\\attrib\\weapon\\allies\\ballistic_weapon\\tank_gun\\76mm_hellcat_gun.rgd",
	"attrib\\attrib\\weapon\\allies\\ballistic_weapon\\tank_gun\\m1a1c_76mm_sherman_upgunned.rgd",
	"attrib\\attrib\\weapon\\allies\\ballistic_weapon\\tank_gun\\m3_75mm_m4_sherman_gun.rgd",
	"attrib\\attrib\\weapon\\allies\\ballistic_weapon\\tank_gun\\m3_75mm_scott_howitzer.rgd",
	"attrib\\attrib\\weapon\\allies\\ballistic_weapon\\tank_gun\\m3_90mm_m36_gun.rgd",
	"attrib\\attrib\\weapon\\allies\\ballistic_weapon\\tank_gun\\m3_90mm_pershing_gun.rgd",
	"attrib\\attrib\\weapon\\allies\\ballistic_weapon\\tank_gun\\m6_37mm_greyhound_gun.rgd",
	"attrib\\attrib\\weapon\\allies\\ballistic_weapon\\tank_gun\\m6_37mm_greyhound_gun_staghound.rgd",
	"attrib\\attrib\\weapon\\allies\\ballistic_weapon\\tank_gun\\m7_3in_m10_gun.rgd",
	"attrib\\attrib\\weapon\\allies\\ballistic_weapon\\tank_gun\\m4_105mm_sherman_gun.rgd",
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
	"attrib\\attrib\\weapon\\axis\\ballistic_weapon\\tank_gun\\flak_43_37mm_aa_ostwind_gun.rgd",
	"attrib\\attrib\\weapon\\axis\\ballistic_weapon\\tank_gun\\kwk36_88mm_tiger_gun.rgd",
	"attrib\\attrib\\weapon\\axis\\ballistic_weapon\\tank_gun\\kwk37_pziv_short_barrel.rgd",
	"attrib\\attrib\\weapon\\axis\\ballistic_weapon\\tank_gun\\kwk38_20mm_light_armoured_car_gun.rgd",
	"attrib\\attrib\\weapon\\axis\\ballistic_weapon\\tank_gun\\kwk39_50mm_puma_gun.rgd",
	"attrib\\attrib\\weapon\\axis\\ballistic_weapon\\tank_gun\\kwk40_75mm_pziv_gun.rgd",
	"attrib\\attrib\\weapon\\axis\\ballistic_weapon\\tank_gun\\kwk42_75mm_panther_gun.rgd",
	"attrib\\attrib\\weapon\\axis\\ballistic_weapon\\tank_gun\\stuk40_75mm_stug_gun.rgd",
	"attrib\\attrib\\weapon\\axis\\ballistic_weapon\\tank_gun\\stuh42_105mm_haubitze_gun.rgd",
	"attrib\\attrib\\weapon\\axis\\ballistic_weapon\\tank_gun\\stuh42_105mm_stug_gun.rgd",
	"attrib\\attrib\\weapon\\axis_pe\\ballistic_weapon\\tank_gun\\pak43_88mm_kingtiger_gun.rgd",
	"attrib\\attrib\\weapon\\axis\\ballistic_weapon\\anti_tank_gun\\50mm_pak_38.rgd",
	"attrib\\attrib\\weapon\\axis\\ballistic_weapon\\anti_tank_gun\\75mm_pak_40_geschutzwagen.rgd",
	"attrib\\attrib\\weapon\\axis\\ballistic_weapon\\anti_tank_gun\\flak36_88mm_atg.rgd",

	"attrib\\attrib\\weapon\\axis_pe\\ballistic_weapon\\tank_gun\\apcr_pak39_hetzer_gun.rgd",
	"attrib\\attrib\\weapon\\axis_pe\\ballistic_weapon\\tank_gun\\apcr_pak43_88mm_jagdpanther_gun.rgd",
	"attrib\\attrib\\weapon\\axis_pe\\ballistic_weapon\\tank_gun\\apcr_pe_kwk40_75mm_pziv_gun.rgd",
	"attrib\\attrib\\weapon\\axis_pe\\ballistic_weapon\\tank_gun\\apcr_pe_kwk42_75mm_panther_gun.rgd",
	"attrib\\attrib\\weapon\\axis_pe\\ballistic_weapon\\tank_gun\\pak39_hetzer_gun.rgd",
	"attrib\\attrib\\weapon\\axis_pe\\ballistic_weapon\\tank_gun\\kwk38_20mm_sdkfz_222.rgd",
	"attrib\\attrib\\weapon\\axis_pe\\ballistic_weapon\\tank_gun\\kwk38_20mm_sdkfz_250_9.rgd",
	"attrib\\attrib\\weapon\\axis_pe\\ballistic_weapon\\tank_gun\\kwk39_50mm_h35_upgun.rgd",
	"attrib\\attrib\\weapon\\axis_pe\\ballistic_weapon\\tank_gun\\pak43_88mm_jagdpanther_gun.rgd",
	"attrib\\attrib\\weapon\\axis_pe\\ballistic_weapon\\tank_gun\\pak43_88mm_hummel.rgd",
	"attrib\\attrib\\weapon\\axis_pe\\ballistic_weapon\\tank_gun\\pe_flak38_20mm_luftwaffe.rgd",
	"attrib\\attrib\\weapon\\axis_pe\\ballistic_weapon\\anti_tank_gun\\37mm_pak_35_halftrack.rgd",
	"attrib\\attrib\\weapon\\axis_pe\\ballistic_weapon\\anti_tank_gun\\75mm_pak_40_marderiii.rgd",
	"attrib\\attrib\\weapon\\axis_pe\\ballistic_weapon\\anti_tank_gun\\apcr_37mm_pak_35_halftrack.rgd",
	"attrib\\attrib\\weapon\\axis_pe\\ballistic_weapon\\anti_tank_gun\\apcr_75mm_pak_40_marderiii.rgd",
}
local results,n = {},0
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
	if show and rgd.GameData and rgd.GameData.weapon_bag then
		local weapon = rgd.GameData.weapon_bag
		
		local damage = (weapon.damage.min+weapon.damage.max)/2
		local reloadFrequency = 1+(weapon.reload.frequency.max+weapon.reload.frequency.min)/2
		local reloadDuration = (weapon.reload.duration.max+weapon.reload.duration.min)/2

		if weapon.burst.can_burst == true then
			local burstDuration = (weapon.burst.duration.max+weapon.burst.duration.min)/2
			local rateOfFire = (weapon.burst.rate_of_fire.max+weapon.burst.rate_of_fire.min)/2
			
			local burstsFired = 1/(burstDuration*reloadFrequency+reloadDuration)
			shotsFired = rateOfFire*burstsFired
		else
			shotsFired = 1/(reloadFrequency+reloadDuration)
		end
		local dps = shotsFired*damage
		
		local plainDamage = {
			math.floor((math.min(1, weapon.accuracy.distant)*dps+0.005)*100)/100,
			math.floor((math.min(1, weapon.accuracy.long)*dps+0.005)*100)/100,
			math.floor((math.min(1, weapon.accuracy.medium)*dps+0.005)*100)/100,
			math.floor((math.min(1, weapon.accuracy.short)*dps+0.005)*100)/100
		}
		local penetrationDamage = {
			math.floor((math.min(1, weapon.penetration.distant)*plainDamage[1]+0.005)*100)/100,
			math.floor((math.min(1, weapon.penetration.long)*plainDamage[2]+0.005)*100)/100,
			math.floor((math.min(1, weapon.penetration.medium)*plainDamage[3]+0.005)*100)/100,
			math.floor((math.min(1, weapon.penetration.short)*plainDamage[4]+0.005)*100)/100
		}
		local plainDamagePerHit = {
			math.floor((math.min(1, weapon.accuracy.distant)*damage+0.005)*100)/100,
			math.floor((math.min(1, weapon.accuracy.long)*damage+0.005)*100)/100,
			math.floor((math.min(1, weapon.accuracy.medium)*damage+0.005)*100)/100,
			math.floor((math.min(1, weapon.accuracy.short)*damage+0.005)*100)/100
		}
		local penetrationDamagePerHit = {
			math.floor((math.min(1, weapon.penetration.distant)*plainDamagePerHit[1]+0.005)*100)/100,
			math.floor((math.min(1, weapon.penetration.long)*plainDamagePerHit[2]+0.005)*100)/100,
			math.floor((math.min(1, weapon.penetration.medium)*plainDamagePerHit[3]+0.005)*100)/100,
			math.floor((math.min(1, weapon.penetration.short)*plainDamagePerHit[4]+0.005)*100)/100
		}
		n = n+1
		results[n] = {rgd.name, dps, damage, plainDamage, penetrationDamage, plainDamagePerHit, penetrationDamagePerHit}
	end
end

function at_end()
	--table.sort(results, function(a,b) return a[2] > b[2] end)
	for i=1,n do
		local name = results[i][1]
		local dps = results[i][2]
		local damage = results[i][3]
		local plainDamage = results[i][4]
		local penetrationDamage = results[i][5]
		local plainDamagePerHit = results[i][6]
		local penetrationDamagePerHit = results[i][7]
		print("# "..name..": Plain="..(math.floor((dps+0.005)*100)/100).." Per Hit="..damage.." (x5 = "..(damage*5)..")")
		print("  + PER HIT --------")
		print("  | distant: "..plainDamagePerHit[1].." / "..penetrationDamagePerHit[1].." (x5 = "..(penetrationDamagePerHit[1]*5)..")")
		print("  | long: "..plainDamagePerHit[2].." / "..penetrationDamagePerHit[2].." (x5 = "..(penetrationDamagePerHit[2]*5)..")")
		print("  | medium: "..plainDamagePerHit[3].." / "..penetrationDamagePerHit[3].." (x5 = "..(penetrationDamagePerHit[3]*5)..")")
		print("  | short: "..plainDamagePerHit[4].." / "..penetrationDamagePerHit[4].." (x5 = "..(penetrationDamagePerHit[4]*5)..")")
		print("")
	end
end
