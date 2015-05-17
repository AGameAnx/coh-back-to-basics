
function loadBag(path)
	if string.sub(path, -4) == ".lua" then
		path = string.sub(path, 0, -5)..".rgd"
	end
	local _b = pLoadRgd(path)
	return _b.GameData
end
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

function each_file(rgd)
	if rgd.GameData and rgd.GameData.ability_bag then
		local bag = rgd.GameData.ability_bag
		if bag.action_list.start_target_actions.action_01["$REF"] == "action\\ability_action\\paradrop_action.lua" then
			local strPos = string.find(bag.action_list.start_target_actions.action_01.squad_to_spawn, "\\abilityspawn_", 0, true)
			if strPos then
				
				-- Ability stuff
				bag.duration = 5
				bag.engage_combat = false
				bag.initial_delay_time = 0
				bag.range = 15
				bag.squad_caster = "one_entity"
				bag.ai_tactic.position_target_filter = "PositionTacticFilter_AtHomeBase"
				bag.ai_tactic.priority = 1
				bag.ai_tactic.tactic_demand = "AITacticDemand_Default"
				bag.ai_tactic.tactic_filter = "TacticFilter_TrivialAccept"
				
				-- Action
				local squadName = string.sub(bag.action_list.start_target_actions.action_01.squad_to_spawn, 0, strPos-1).."\\"..string.sub(bag.action_list.start_target_actions.action_01.squad_to_spawn, strPos+14)
				print(squadName)
				
				local squadBag = loadBag("attrib\\attrib\\"..squadName)
				
				bag.action_list.start_target_actions.action_01 = loadBag("attrib\\attrib\\action\\ability_action\\reinforcements_action.lua")
				bag.action_list.start_target_actions.action_01["$REF"] = "action\\ability_action\\reinforcements_action.lua"
				bag.action_list.start_target_actions.action_01.allow_building_spawn = false
				bag.action_list.start_target_actions.action_01.spawn_random_squads = true
				bag.action_list.start_target_actions.action_01.squad_table.squad_01 = squadName
				
				local cost = 0
				local populationCost = 0
				
				for i=1,8 do
					local loadoutUnit = squadBag.squad_loadout_ext.unit_list["unit_0"..i]
					if loadoutUnit.type.type ~= "" then
						local ebpsBag = loadBag("attrib\\attrib\\"..loadoutUnit.type.type)
						cost = cost + ebpsBag.cost_ext.time_cost.cost.fuel*loadoutUnit.max
						cost = cost + ebpsBag.cost_ext.time_cost.cost.manpower*loadoutUnit.max
						cost = cost + ebpsBag.cost_ext.time_cost.cost.munition*loadoutUnit.max
						populationCost = populationCost + ebpsBag.population_ext.personnel_pop*loadoutUnit.max
					end
				end
				
				print("  cost: "..cost)
				print("  populationCost: "..populationCost)
				
				bag.action_list.start_target_actions.action_01.minimum_pop_used = populationCost
				bag.action_list.start_target_actions.action_01.points_total = cost
				
				--rgd:save()
			end
		end
	end
end

function at_end()
end
