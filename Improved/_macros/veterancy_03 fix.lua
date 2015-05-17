function each_file(rgd)
	if rgd.GameData and rgd.GameData.squad_veterancy_ext then
		local vet = rgd.GameData.squad_veterancy_ext
		if vet.veterancy_rank_info.veterancy_rank_03.squad_actions.action_01.modifiers.modifier_02.value >= 1.25 then
			vet.veterancy_rank_info.veterancy_rank_03.squad_actions.action_01.modifiers.modifier_02.value = 1.15
			print(rgd.name)
			--rgd:save()
		end
	end
end

function at_end()
end
