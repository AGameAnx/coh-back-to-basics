function each_file(rgd)
	local changesMade = false
	if rgd.GameData.ability_ext then
		for i,v in pairs(rgd.GameData.ability_ext.abilities) do
			if v == 'abilities\\vehicle_cover_ability.lua' then
				rgd.GameData.ability_ext.abilities[i] = ''
				changesMade = true
				break
			end
		end
	end
	--[[if rgd.GameData.cover_ext and rgd.GameData.obj_cover_ext then
		changesMade = true
		rgd.GameData.cover_ext = nil
	end]]
	if rgd.GameData.entity_blueprint_ext and rgd.GameData.obj_cover_ext and rgd.GameData.entity_blueprint_ext.simbox.scale.x ~= 0 then
		changesMade = true
		rgd.GameData.entity_blueprint_ext.simbox.scale.x = rgd.GameData.entity_blueprint_ext.simbox.scale.x * 1.25
		rgd.GameData.entity_blueprint_ext.simbox.scale.y = rgd.GameData.entity_blueprint_ext.simbox.scale.y * 1.25
		rgd.GameData.entity_blueprint_ext.simbox.scale.z = rgd.GameData.entity_blueprint_ext.simbox.scale.z * 1.25
		rgd.GameData.obj_cover_ext.use_simbox_range = false
		rgd.GameData.obj_cover_ext.use_simbox_range_plus_spots = false
		rgd.GameData.obj_cover_ext.lengthwise_spots = false
		rgd.GameData.obj_cover_ext.range_x = rgd.GameData.entity_blueprint_ext.simbox.scale.x*8
		rgd.GameData.obj_cover_ext.range_y = rgd.GameData.entity_blueprint_ext.simbox.scale.y*8
		rgd.GameData.obj_cover_ext.range_z = rgd.GameData.entity_blueprint_ext.simbox.scale.z*8
	end
	if changesMade then
		print(rgd.name)
		rgd:save()
	end
end

function at_end()
end
