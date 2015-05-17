function each_file(rgd)
	if rgd.GameData.weapon_bag then
		local wb = rgd.GameData.weapon_bag
		local madeChanges = false
		for i,v in pairs(wb.target_table) do
			if i != '$REF' and type(wb.target_table[i]) == 'userdata' then
				for j,w in pairs(wb.target_table[i]) do
					if j != '$REF' and type(wb.target_table[i][j]) == 'string' then
						if not madeChanges then
							print(rgd.name)
						end
						print('  '..i..'['..j..'] = '..wb.target_table[i][j])
						wb.target_table[i][j] = tonumber(wb.target_table[i][j])
						madeChanges = true
					end
				end
			end
		end
		if madeChanges then
			rgd:save()
		end
	end
end

function at_end()
end
