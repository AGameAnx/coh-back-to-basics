function each_file(rgd)
	if rgd.GameData.squad_ai_ext and rgd.GameData.squad_ai_ext.pickup_tactic.priority > 0 then
		--for i,v in rgd.GameData.squad_ai_ext.pickup_tactic.class_list do
		--	if i != '$REF' then
		--		rgd.GameData.squad_ai_ext.pickup_tactic.class_list[i] = ''
		--	end
		--end
		--rgd.GameData.squad_ai_ext.pickup_tactic.class_list.class_01 = 'ai_tactic_moving'
		rgd.GameData.squad_ai_ext.pickup_tactic.priority = 2
		rgd.GameData.squad_ai_ext.pickup_tactic.tactic_demand = 'TacticDemand_Not_NearEnemyClump_ShortRange'
		--rgd:save()
		print('@'..rgd.name)
		--print('  [class_list]:')
		--for i,v in rgd.GameData.squad_ai_ext.pickup_tactic.class_list do
		--	print('    ['..i..']: '..v)
		--end
		for i,v in rgd.GameData.squad_ai_ext.pickup_tactic do
			--if type(v) != 'table' then
				print('  ['..i..']: '..tostring(v))
			--end
		end
	end
end

function at_end()
end
