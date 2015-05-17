local showWeaponsOfInterestOnly = true
local weaponsOfInterest = {
	"attrib\\attrib\\weapon\\allies\\small_arms\\machine_gun\\heavy_machine_gun\\m1917_browning_30_cal_hmg.rgd",
	"attrib\\attrib\\weapon\\plane_weapons\\m2hb_hmg_p47_thunderbolt_50_cal_force_fire.rgd",
	"attrib\\attrib\\weapon\\plane_weapons\\vickers_hmg_hawker_typhoon_303_cal_force_fire.rgd",
	"attrib\\attrib\\weapon\\allies\\small_arms\\machine_gun\\heavy_machine_gun\\m2hb_hmg.rgd",
	"attrib\\attrib\\weapon\\allies\\small_arms\\machine_gun\\heavy_machine_gun\\m2hb_jeep_hmg.rgd",
	"attrib\\attrib\\weapon\\allies\\small_arms\\machine_gun\\heavy_machine_gun\\m2hb_turret_mount.rgd",
	"attrib\\attrib\\weapon\\allies\\small_arms\\machine_gun\\heavy_machine_gun\\m2hb_m3_halftrack.rgd",
	"attrib\\attrib\\weapon\\allies\\small_arms\\machine_gun\\heavy_machine_gun\\quad_50_cal_m2hb.rgd",
	"attrib\\attrib\\weapon\\allies\\small_arms\\machine_gun\\light_machine_gun\\m1918_browning_automatic_rifle.rgd",
	"attrib\\attrib\\weapon\\allies\\small_arms\\machine_gun\\light_machine_gun\\m1919a4_vehicle.rgd",
	"attrib\\attrib\\weapon\\allies\\small_arms\\machine_gun\\light_machine_gun\\m1919a4_coaxial_vehicle.rgd",
	"attrib\\attrib\\weapon\\allies\\small_arms\\machine_gun\\light_machine_gun\\m1919a4_hull.rgd",
	"attrib\\attrib\\weapon\\allies\\small_arms\\machine_gun\\sub_machine_gun\\m1_thompson_smg.rgd",
	"attrib\\attrib\\weapon\\allies\\small_arms\\machine_gun\\sub_machine_gun\\m3_smg.rgd",
	"attrib\\attrib\\weapon\\allies\\small_arms\\single_fire\\rifle\\m1_carbine.rgd",
	"attrib\\attrib\\weapon\\allies\\small_arms\\single_fire\\rifle\\m1_garand_rifle.rgd",
	"attrib\\attrib\\weapon\\allies\\small_arms\\single_fire\\rifle\\m1_garand_rifle_wc.rgd",
	"attrib\\attrib\\weapon\\allies\\small_arms\\single_fire\\rifle\\ranger_m1_garand_rifle.rgd",
	"attrib\\attrib\\weapon\\allies\\small_arms\\single_fire\\rifle\\m1903a4_sniper_rifle.rgd",
	"attrib\\attrib\\weapon\\allies\\small_arms\\single_fire\\pistol\\colt_m1911_45_pistol.rgd",
	
	"attrib\\attrib\\weapon\\allies_cw\\small_arms\\machine_gun\\heavy_machine_gun\\cw_vickers_hmg.rgd",
	"attrib\\attrib\\weapon\\allies_cw\\small_arms\\machine_gun\\heavy_machine_gun\\cw_vickers_hmg_emplacement.rgd",
	"attrib\\attrib\\weapon\\allies_cw\\small_arms\\machine_gun\\heavy_machine_gun\\cw_vickers_bren.rgd",
	"attrib\\attrib\\weapon\\allies_cw\\small_arms\\machine_gun\\light_machine_gun\\bren_mark_2_lmg.rgd",
	"attrib\\attrib\\weapon\\allies_cw\\small_arms\\machine_gun\\light_machine_gun\\bren_mark_2_lmg_carrier.rgd",
	"attrib\\attrib\\weapon\\allies_cw\\small_arms\\machine_gun\\light_machine_gun\\commonwealth_besa_hull.rgd",
	"attrib\\attrib\\weapon\\allies_cw\\small_arms\\machine_gun\\light_machine_gun\\commonwealth_firefly_hull.rgd",
	"attrib\\attrib\\weapon\\allies_cw\\small_arms\\machine_gun\\sub_machine_gun\\cw_sten_smg.rgd",
	"attrib\\attrib\\weapon\\allies_cw\\small_arms\\machine_gun\\sub_machine_gun\\cw_sten_smg_silencer.rgd",
	"attrib\\attrib\\weapon\\allies_cw\\small_arms\\single_fire\\rifle\\cw_lee_enfield.rgd",
	"attrib\\attrib\\weapon\\allies_cw\\small_arms\\single_fire\\rifle\\cw_lee_enfield_elite.rgd",
	"attrib\\attrib\\weapon\\allies_cw\\small_arms\\single_fire\\rifle\\cw_lee_enfield_sharpshooter.rgd",
	"attrib\\attrib\\weapon\\allies_cw\\small_arms\\single_fire\\rifle\\lee_enfield_sniper_rifle_commando.rgd",
	"attrib\\attrib\\weapon\\allies_cw\\small_arms\\single_fire\\pistol\\cw_webley_revolver.rgd",
	"attrib\\attrib\\weapon\\boys_at_rifle.rgd",
	
	"attrib\\attrib\\weapon\\axis\\small_arms\\machine_gun\\heavy_machine_gun\\mg42_hmg.rgd",
	"attrib\\attrib\\weapon\\axis\\small_arms\\machine_gun\\heavy_machine_gun\\mg42_mgnest.rgd",
	"attrib\\attrib\\weapon\\axis\\small_arms\\machine_gun\\light_machine_gun\\mg42_hull.rgd",
	"attrib\\attrib\\weapon\\axis\\small_arms\\machine_gun\\light_machine_gun\\mg42_lmg.rgd",
	"attrib\\attrib\\weapon\\axis\\small_arms\\machine_gun\\light_machine_gun\\mg42_motorcycle_sidecar.rgd",
	"attrib\\attrib\\weapon\\axis\\small_arms\\machine_gun\\light_machine_gun\\mg42_turret_mounted.rgd",
	"attrib\\attrib\\weapon\\axis\\small_arms\\machine_gun\\light_machine_gun\\mg42_vehicle.rgd",
	"attrib\\attrib\\weapon\\axis\\small_arms\\machine_gun\\light_machine_gun\\mg42_vehicle_geschutzwagen.rgd",
	"attrib\\attrib\\weapon\\axis\\small_arms\\machine_gun\\light_machine_gun\\mg42_vehicle_rear.rgd",
	"attrib\\attrib\\weapon\\axis\\small_arms\\machine_gun\\light_machine_gun\\mg42_coaxial_generic.rgd",
	"attrib\\attrib\\weapon\\axis\\small_arms\\machine_gun\\sub_machine_gun\\mp40_smg.rgd",
	"attrib\\attrib\\weapon\\axis\\small_arms\\machine_gun\\sub_machine_gun\\mp40_smg_weapon_team.rgd",
	"attrib\\attrib\\weapon\\axis\\small_arms\\machine_gun\\sub_machine_gun\\mp44_assault_rifle.rgd",
	"attrib\\attrib\\weapon\\axis\\small_arms\\machine_gun\\sub_machine_gun\\pioneer_mp40_smg.rgd",
	"attrib\\attrib\\weapon\\axis\\small_arms\\single_fire\\rifle\\kar_98k_rifle.rgd",
	"attrib\\attrib\\weapon\\axis\\small_arms\\single_fire\\rifle\\kar_98k_rifle_vg.rgd",
	"attrib\\attrib\\weapon\\axis\\small_arms\\single_fire\\rifle\\stormtrooper_kar_98k_rifle.rgd",
	"attrib\\attrib\\weapon\\axis\\small_arms\\single_fire\\rifle\\gewehr_43.rgd",
	"attrib\\attrib\\weapon\\axis\\small_arms\\single_fire\\pistol\\luger_p08_9mm_pistol.rgd",
	
	"attrib\\attrib\\weapon\\axis_pe\\ballistic_weapon\\tank_gun\\pe_flak38_20mm_luftwaffe.rgd",
	"attrib\\attrib\\weapon\\axis_pe\\ballistic_weapon\\tank_gun\\kwk38_20mm_sdkfz_222.rgd",
	"attrib\\attrib\\weapon\\axis_pe\\ballistic_weapon\\tank_gun\\kwk38_20mm_sdkfz_250_9.rgd",
	"attrib\\attrib\\weapon\\axis\\ballistic_weapon\\tank_gun\\flak38_wirblewind.rgd",
	"attrib\\attrib\\weapon\\axis\\ballistic_weapon\\tank_gun\\kwk38_20mm_light_armoured_car_gun.rgd",
	"attrib\\attrib\\weapon\\axis_pe\\small_arms\\machine_gun\\light_machine_gun\\mg42_250_halftrack.rgd",
	"attrib\\attrib\\weapon\\axis_pe\\small_arms\\machine_gun\\light_machine_gun\\mg42_hetzer.rgd",
	"attrib\\attrib\\weapon\\axis_pe\\small_arms\\machine_gun\\light_machine_gun\\mg42_sdkfz_221.rgd",
	"attrib\\attrib\\weapon\\axis_pe\\small_arms\\machine_gun\\light_machine_gun\\mg42_sdkfz_222.rgd",
	"attrib\\attrib\\weapon\\axis_pe\\small_arms\\machine_gun\\light_machine_gun\\mg42_sdkfz_250_9.rgd",
	"attrib\\attrib\\weapon\\axis_pe\\small_arms\\machine_gun\\sub_machine_gun\\fg_42_assault_rifle.rgd",
	"attrib\\attrib\\weapon\\axis_pe\\small_arms\\single_fire\\rifle\\gewehr_43.rgd",
	"attrib\\attrib\\weapon\\axis_pe\\small_arms\\single_fire\\rifle\\gewehr_43_noscope.rgd",
	"attrib\\attrib\\weapon\\axis_pe\\small_arms\\single_fire\\rifle\\gewehr_43_noscope_vital_shot.rgd",
	"attrib\\attrib\\weapon\\axis_pe\\small_arms\\single_fire\\rifle\\gewehr_43_sharpshooter.rgd",
	"attrib\\attrib\\weapon\\axis_pe\\small_arms\\single_fire\\rifle\\pe_kar_98k_rifle.rgd",
}
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
		local numShots = 1+(weapon.reload.frequency.max+weapon.reload.frequency.min)/2
		local reloadDuration = (weapon.reload.duration.max+weapon.reload.duration.min)/2
		local burstDuration = 0
		local clip = numShots
		
		if weapon.burst.can_burst == true then
			
			burstDuration = (weapon.burst.duration.max+weapon.burst.duration.min)/2
			
			local rateOfFire = (weapon.burst.rate_of_fire.max+weapon.burst.rate_of_fire.min)/2
			local shotsFired = rateOfFire*burstDuration
			clip = numShots*shotsFired
			
			damage = damage * shotsFired
		end
		
		print(string.format("# %s. [%d, %d] Clip: [%1.1f] Damage scale:", rgd.name, weapon.range.min, weapon.range.max, clip))
		
		function getDPS(distance)
			local shotDuration = weapon.cooldown.duration_multiplier[distance]*((weapon.cooldown.duration.max+weapon.cooldown.duration.min)/2)+weapon.fire.wind_up+weapon.fire.wind_down+burstDuration
			local fullSequenceTime = shotDuration*numShots+reloadDuration
			return weapon.accuracy[distance]*damage*numShots/fullSequenceTime
		end
		
		local damageScale = ""
		for range=0,54,2 do
			damageScale = damageScale..string.format("%3d ", range)
		end
		
		local distDmg = getDPS("distant")
		local longDmg = getDPS("long")
		local medDmg = getDPS("medium")
		local shortDmg = getDPS("short")
		
		print(damageScale)
		damageScale = ""
		local localDamage
		local function getDamageScaled(rangeDiff, range, maxDmg, minDmg)
			return maxDmg-(maxDmg-minDmg)*range/rangeDiff
		end
		for range=0,54,2 do
			localDamage = 0
			if range >= weapon.range.min and range <= weapon.range.max then
				if range > weapon.range.mid.distant then
					localDamage = getDamageScaled(weapon.range.max-weapon.range.mid.distant, range-weapon.range.mid.distant, distDmg, 0)
				elseif range > weapon.range.mid.long then
					localDamage = getDamageScaled(weapon.range.mid.distant-weapon.range.mid.long, range-weapon.range.mid.long, longDmg, distDmg)
				elseif range > weapon.range.mid.medium then
					localDamage = getDamageScaled(weapon.range.mid.long-weapon.range.mid.medium, range-weapon.range.mid.medium, medDmg, longDmg)
				elseif range > weapon.range.mid.short then
					localDamage = getDamageScaled(weapon.range.mid.medium-weapon.range.mid.short, range-weapon.range.mid.short, shortDmg, medDmg)
				else
					localDamage = shortDmg
				end
			end
			damageScale = damageScale..string.format("%3d ", localDamage)
		end
		print(damageScale)
		
		function output(distance)
			print(string.format("  | %s (%d)=%.2f", distance, weapon.range.mid[distance], getDPS(distance)))
		end
		
		output("distant")
		output("long")
		output("medium")
		output("short")
	end
end

function at_end()
end
