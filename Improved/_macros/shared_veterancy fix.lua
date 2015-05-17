function each_file(rgd)
	if rgd.GameData and rgd.GameData.squad_shared_veterancy_ext then
		local vet = rgd.GameData.squad_shared_veterancy_ext
		if vet.multiplier_pct_self <= 1.1 and vet.multiplier_pct_share <= 0.31 then
			vet.multiplier_pct_self = 1
			vet.multiplier_pct_share = 0.4
			print(rgd.name)
			rgd:save()
		end
	end
end

function at_end()
end
