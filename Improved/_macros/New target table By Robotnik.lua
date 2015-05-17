-- new target table by Robotnik

-- to use: place the name of the new target type (ex: tp_armour_soviets_su85) 
--in the spot that says "place target type here". make sure to remove any quotes

--then insert a base target type that the new target type will be based off of (ex: tp_armour_allies_sherman) 
--in the spot that says "base target type here". make sure to remove any quotes

--you can replace the multiplier at the end of each line with something different (ex: .75 , 1.5) to make the armor type more unique in different ways

--after that you are ready to run the macro. note that the macro can take from 15 seconds to a few minuits to run, 
--during which corsix will not respond and appear to not respond on the comnputer. just give it time to run and it will be fine

local baseTargetType = 'base target type here'
local newTargetType = 'new target type here'

function each_file(rgd)
	if rgd.GameData.weapon_bag then
		rgd.GameData.weapon_bag.target_table[newTargetType] = {}
		rgd.GameData.weapon_bag.target_table[newTargetType]["$REF"] = [[tables\weapon_target_entry.lua]]
		--damage multiplier
		rgd.GameData.weapon_bag.target_table[newTargetType].damage_multiplier = tonumber(string.format('%.2f', rgd.GameData.weapon_bag.target_table[baseTargetType].damage_multiplier * 1 ))
		--accuracy multiplier
		rgd.GameData.weapon_bag.target_table[newTargetType].accuracy_multiplier = tonumber(string.format('%.2f', rgd.GameData.weapon_bag.target_table[baseTargetType].accuracy_multiplier * 1))
		--choose whether enemies will automatically search for the target
		rgd.GameData.weapon_bag.target_table[newTargetType].disable_auto_search = false
		--choose whether enemies can target this target
		rgd.GameData.weapon_bag.target_table[newTargetType].disable_target = false
		--moving accuracy multiplier	
		rgd.GameData.weapon_bag.target_table[newTargetType].moving_accuracy_multiplier = tonumber(string.format('%.2f', rgd.GameData.weapon_bag.target_table[baseTargetType].moving_accuracy_multiplier * 1))
		--penetration multiplier
		rgd.GameData.weapon_bag.target_table[newTargetType].penetration_multiplier = tonumber(string.format('%.2f', rgd.GameData.weapon_bag.target_table[baseTargetType].penetration_multiplier * 1))
		--target priority
		rgd.GameData.weapon_bag.target_table[newTargetType].priority = tonumber(string.format('%.2f', rgd.GameData.weapon_bag.target_table[baseTargetType].priority * 1))
		--rear penetration multiplier
		rgd.GameData.weapon_bag.target_table[newTargetType].rear_penetration_multiplier = tonumber(string.format('%.2f', rgd.GameData.weapon_bag.target_table[baseTargetType].rear_penetration_multiplier * 1))
		--suppression multiplier
		rgd.GameData.weapon_bag.target_table[newTargetType].suppression_multiplier = tonumber(string.format('%.2f', rgd.GameData.weapon_bag.target_table[baseTargetType].suppression_multiplier * 1))
		rgd:save()
	else
		print(rgd.name.." was skipped!")
	end
end