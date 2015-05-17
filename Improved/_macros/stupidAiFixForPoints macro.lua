local useList = true
local list = {
	"attrib\\attrib\\ebps\\gameplay\\can_build_point.rgd",
	"attrib\\attrib\\ebps\\gameplay\\fuel_point.rgd",
	"attrib\\attrib\\ebps\\gameplay\\fuel_point_high.rgd",
	"attrib\\attrib\\ebps\\gameplay\\fuel_point_medium.rgd",
	"attrib\\attrib\\ebps\\gameplay\\high_ground_point.rgd",
	"attrib\\attrib\\ebps\\gameplay\\invisible_no_resource_point.rgd",
	"attrib\\attrib\\ebps\\gameplay\\manpower_resource_point.rgd",
	"attrib\\attrib\\ebps\\gameplay\\manpower_resource_point_high.rgd",
	"attrib\\attrib\\ebps\\gameplay\\manpower_resource_point_medium.rgd",
	"attrib\\attrib\\ebps\\gameplay\\munition_point.rgd",
	"attrib\\attrib\\ebps\\gameplay\\munition_point_high.rgd",
	"attrib\\attrib\\ebps\\gameplay\\munition_point_high_sp_command.rgd",
	"attrib\\attrib\\ebps\\gameplay\\munition_point_medium.rgd",
	"attrib\\attrib\\ebps\\gameplay\\no_resource_point.rgd",
	"attrib\\attrib\\ebps\\gameplay\\no_resource_point_can_build.rgd",
	"attrib\\attrib\\ebps\\gameplay\\sp_victorypoint.rgd",
	"attrib\\attrib\\ebps\\gameplay\\sp_victorypoint_createsterritory.rgd",
}

local results,n = {},0
function each_file(rgd)
	local show
	if useList then
		show = false
		for i=1,table.getn(list) do
			if list[i] == rgd.path then
				show = true
				break
			end
		end
	else
		show = true
	end
	
	if show and rgd.GameData.type_ext and rgd.GameData.type_ext.type_target_weapon["$REF"] != "type_target_weapon\\tp_building_resource.lua" then
		
		--print(string.format("%q,", rgd.path)) -- use this and comment out every other print in order to construct the list of rgds automatically
		
		print(rgd.name)
		print("  -type: [  "..rgd.GameData.type_ext.type_target_weapon["$REF"].."  ]")
		rgd.GameData.type_ext.type_target_weapon["$REF"] = "type_target_weapon\\tp_building_resource.lua"
		--rgd:save()
	end
end

function at_end()
end
