
-- This macro loads ebps from squads and applies a multiplier on their upkeep

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
	if rgd.GameData.squad_loadout_ext then
		local list = rgd.GameData.squad_loadout_ext.unit_list
		print(rgd.name)
		--[[local sqSize = 0
		for i,v in pairs(list) do
			if i ~= '$REF' then
				sqSize = sqSize + v.num
			end
		end]]
		for i,v in pairs(list) do
			if i ~= '$REF' and v.type.type ~= '' then
				local e = pLoadRgd("attrib\\attrib\\"..string.sub(v.type.type, 0, string.len(v.type.type)-3).."rgd")
				if e then
					print("  attrib\\attrib\\"..string.sub(v.type.type, 0, string.len(v.type.type)-3).."rgd")
					if e.GameData.cost_ext and e.GameData.cost_ext.upkeep.manpower > 0 then
						print('    '..string.format('%.6f', e.GameData.cost_ext.upkeep.manpower)..' => '..string.format('%.6f', e.GameData.cost_ext.upkeep.manpower*1.1))
						e.GameData.cost_ext.upkeep.manpower = tonumber(string.format('%.6f', e.GameData.cost_ext.upkeep.manpower*1.1))
						e:save()
					end
				end
			end
		end
	end
end

function at_end()
end
