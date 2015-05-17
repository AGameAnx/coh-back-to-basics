function each_file(rgd)
	if rgd.GameData and rgd.GameData.ability_bag then
		local bag = rgd.GameData.ability_bag
		if bag.duration then
			bag.action_list.start_target_actions.action_01.points_total = bag.action_list.start_target_actions.action_01.points_total + 100
			bag.duration_time = bag.duration
			bag.duration = nil
			print(rgd.name.." :: "..bag.action_list.start_target_actions.action_01.points_total)
			rgd:save()
		end
	end
end

function at_end()
end
