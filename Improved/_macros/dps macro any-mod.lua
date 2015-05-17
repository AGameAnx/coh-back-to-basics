local showWeaponsOfInterestOnly = true
local weaponsOfInterest = {
}
function each_file(rgd)
	local show
	if not showWeaponsOfInterestOnly then
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
		
		print(string.format("# %s. [%d, %d] Clip: [%1.1f] Damage scale:", rgd.name, weapon.range.min, weapon.range.max))
		
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
