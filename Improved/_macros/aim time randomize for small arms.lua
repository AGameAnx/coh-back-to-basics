function each_file(rgd)
	if rgd.GameData and rgd.GameData.weapon_bag and string.find(rgd.path, "small_arms\\") then
		if rgd.GameData.weapon_bag.aim.fire_aim_time.max == rgd.GameData.weapon_bag.aim.fire_aim_time.min then
			print(rgd.name)
			print("  "..rgd.GameData.weapon_bag.aim.ready_aim_time.max.." => "..rgd.GameData.weapon_bag.aim.ready_aim_time.max+0.05)
			rgd.GameData.weapon_bag.aim.ready_aim_time.max = rgd.GameData.weapon_bag.aim.ready_aim_time.max+0.05
			print("  "..rgd.GameData.weapon_bag.aim.fire_aim_time.max.." => "..rgd.GameData.weapon_bag.aim.fire_aim_time.max+0.05)
			rgd.GameData.weapon_bag.aim.fire_aim_time.max = rgd.GameData.weapon_bag.aim.fire_aim_time.max+0.05
			rgd:save()
		end
	end
end

function at_end()
end
