function each_file(rgd)
	if rgd.GameData and rgd.GameData.squad_shared_veterancy_ext then
		local vet = rgd.GameData.squad_shared_veterancy_ext
		local vet2 = rgd.GameData.squad_veterancy_ext
		if type(vet.shared_veterancy_type) == "userdata" and vet.shared_veterancy_type["$REF"] then
			vet.shared_veterancy_type = vet.shared_veterancy_type["$REF"];
			vet2.shared_veterancy_type = vet2.shared_veterancy_type["$REF"];

			print(rgd.name)
			--rgd:save()
		end
	end
end

function at_end()
end