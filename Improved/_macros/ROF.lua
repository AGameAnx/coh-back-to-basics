function each_file(rgd)
	local weapon = rgd.GameData.weapon_bag

	local numBursts = (weapon.reload.frequency.max+weapon.reload.frequency.min)/2
	local reloadDuration = (weapon.reload.duration.max+weapon.reload.duration.min)/2

	local burstDuration = 0
	local shotsFired = 1
	local rateOfFire = 1
	if weapon.burst.can_burst == true then -- comment out everything from this if conditional to remove burst bullet number consideration
		burstDuration = (weapon.burst.duration.max+weapon.burst.duration.min)/2
		rateOfFire = (weapon.burst.rate_of_fire.max+weapon.burst.rate_of_fire.min)/2
		shotsFired = rateOfFire*burstDuration
	end

	local distance = "short" -- short/medium/long/distant
	local shotDuration = weapon.cooldown.duration_multiplier[distance]*((weapon.cooldown.duration.max+weapon.cooldown.duration.min)/2)+weapon.fire.wind_up+weapon.fire.wind_down+burstDuration
	local fullSequenceTime = shotDuration*numBursts
	
	local shotsPerSecond = shotsFired*numBursts/fullSequenceTime
	local shotsPerSecond_Reload = shotsFired*numBursts/(fullSequenceTime+reloadDuration)
	
	print(rgd.name.." -----")
	print(string.format("   Pure ROF :: RPS=%.3f. RPM=%.1f", rateOfFire, rateOfFire*60))
	print(string.format("  No Reload :: RPS=%.3f. RPM=%.1f", shotsPerSecond, shotsPerSecond*60))
	print(string.format("     Reload :: RPS=%.3f. RPM=%.1f", shotsPerSecond_Reload, shotsPerSecond_Reload*60))
end

function at_end()
end
