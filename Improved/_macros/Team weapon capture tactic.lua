function each_file(rgd)
	if rgd.GameData.squad_ai_ext then
		if rgd.GameData.squad_ai_ext.capture_team_weapon_tactic.priority > 0 then
			print(rgd.name)
			rgd.GameData.squad_ai_ext.capture_team_weapon_tactic.priority = 2
			rgd.GameData.squad_ai_ext.capture_team_weapon_tactic.tactic_demand = 'TacticDemand_Not_NearEnemySquad'
			print('  '..rgd.GameData.squad_ai_ext.capture_team_weapon_tactic.tactic_demand..' :: '..rgd.GameData.squad_ai_ext.capture_team_weapon_tactic.priority)
			rgd:save()
		end
	end
end

function at_end()
end
