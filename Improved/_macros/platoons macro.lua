-- run this macro on sbps folder
-- if you are editting any of the squad settings you should edit them on original squad and then rerun the macro

-- do not edit this
codereturn = ""
SQUAD_NONE = 0
SQUAD_SELF = 1
SQUAD_LAST = 2
function trace(s) if TRACEINFORMATION then print(s) end end
function loadBag(path)
	local _b = pLoadRgd(path)
	return _b.GameData
end
function table_pasteInto(t, content)
	local v,i
	for i,v in pairs(content) do
		if type(v) == "table" then
			if (t[i] == nil) t[i] = {} end
			table_pasteInto(t[i], v)
		else
			t[i] = v
		end
	end
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

-- edit this at your own risk, changes after the macro is run (with savergds set to true) cannot be reverted
savergds = true
OVERWRITE = true -- Determines whether allready created will be overwritten or not
TRACEINFORMATION = true -- If enabled, additional information about operation progress will be
						-- printed out to the output screen
NAMECUT_START = 0 -- for new SBPS. 0 - beginning of the filename
NAMECUT_END = -1 -- for new SBPS. Use -1 to use all the filename
SQUADNUM = 1 -- default squadnum if none is specified (and no squads specified)
PATH = "attrib\\attrib\\sbps" -- the initial path.
DELAY = 4 -- delay between squad spawns
DELAY_START = 1	-- delay to begin with.
				-- It is suggested that you set this to 1 or a bit more to enable the rally points
				-- For this you will also need to disable animated spawning in the spawner buildings
				-- along with setting the animation lengh to 0 because unit spawning through the
				-- building don't get the destination soon enough.
SBPS_ADDPREFIX = true
SBPS_ADDPOSTFIX = false
SBPS_PREFIX = "abilityspawn_"
SBPS_POSTFIX = ""

SBPS_EXTRA_DATA = {["squad_paradrop_ext"] = loadBag("attrib\\attrib\\sbpextensions\\squad_paradrop_ext.rgd")}
SBPS_EXTRA_DATA["squad_paradrop_ext"]["$REF"] = "sbpextensions\\squad_paradrop_ext.lua"
SBPS_EXTRA_DATA["squad_paradrop_ext"]["spawn_time_scatter"] = 0

EBPS_PREFIX = "abilityspawn_"
EBPS_POSTFIX = ""
EBPS_ADDPREFIX = true
EBPS_ADDPOSTFIX = false
EBPS_NAMECUT_START = 0
EBPS_NAMECUT_END = -1

EBPS_EXTRA_DATA = {["paradrop_ext"] = loadBag("attrib\\attrib\\ebpextensions\\paradrop_ext.rgd")}
EBPS_EXTRA_DATA["paradrop_ext"]["$REF"] = "ebpextensions\\paradrop_ext.lua"
EBPS_EXTRA_DATA["paradrop_ext"]["type_target_weapon_during_drop"] = "type_target_weapon\\tp_infantry_airborne_inflight.lua"

--[[
squad_table = {*squads*}
each squad is an additional table
squad = {}
possible settings for the squad:
required
	rgdname = ""					-- the name of the squad RGD
additional
	name = ""						-- overrides the namecut
	delay = number					-- overrides the default delay between spawns
	delay_start = number			-- overrides the default delay start
	addprefix = true/false			-- overrides the default setting for prefix
	addpostfix = true/false			-- overrides the default setting for postfix
	squadnum = number				-- overrides the default squad number spawned with the squad platoon. Note: overriden by squads table
	ebps_addprefix = true/false		-- overrides the default setting for ebps prefix
	ebps_addpostfix = true/false	-- overrides the default setting for ebps prefix
	skip = true/false				-- if enabled, this entry will not be processed
	notes = ""						-- adds additional notes to report when running macro
	squads = {}						-- tells what squads should arrive in platoon. Overrides the squadnum
		examples:
			squads = {SQUAD_SELF, SQUAD_SELF, SQUAD_SELF}
				this will spawn 3 squads of SQUAD_SELF (the squadname with a path and a .lua extension)
			squads = {SQUAD_SELF, SQUAD_LAST, SQUAD_LAST}
				this is the same as the last example, but this time if you change SQUAD_SELF,
				other squads will also be changed to the new squadname
			squads = {"sbps\\races\\allies\\soldiers\\rifleman_squad.lua"}, SQUAD_SELF, SQUAD_SELF}
				will first spawn a single rifleman squad and then 2 squads being processed
			squads = {"sbps\\races\\allies\\vehicles\\m1_57mm_at_squad.lua", SQUAD_NONE, SQUAD_LAST}
				will first spawn two AT teams with additional delay time between them (useful for making sure they don't stuck together).
				Use squad parameter delay_increasement to achieve the same result
	ui = {}							-- replaces curtain UI information for the platoon squad
		will add/replace exactly the same info as the table index you define
		for example:
			ui = {extra_text = 105650, help_text = 104252, screen_name = 104251}
				will change the text information to be as default for riflemen.


When providing these settings they are being saved and kept for future processing.
Because of that, you can also provide them alone, without specifying required settings for the squad
	path = ""				-- a path to search the rgdname in. You can always specify a full paths in rgdname, but this cuts the ammount of text you need to write
	sbps_prefix = ""		-- changes the sbps prefix added to each squad rgd created
	sbps_postfix = ""		-- changes the sbps postfix added to each squad rgd created
	ebps_prefix = ""		-- changes the ebps prefix added to each entity rgd created
	ebps_postfix = ""		-- changes the ebps postfix added to each entity rgd created
	sbps_extra_data = {}	-- this will deep copy this table directly into your squad's rgd's GameData. It will overwrite existing data without warning
	ebps_extra_data = {}	-- this will deep copy this table directly into each of your squad's used ebps rgd's GameData It will overwrite existing data without warning
]]

squad_table = {
{path="attrib\\attrib\\sbps\\races\\allies\\soldiers"},
{rgdname="ranger_team.rgd"},

{path="attrib\\attrib\\sbps\\races\\allies\\vehicles"},
{rgdname="t17_squad_reinforcement_radio.rgd"},
{rgdname="m18_hellcat.rgd"},
{rgdname="m7_priest_squad.rgd"},
{rgdname="m4_sherman_squad_calliope.rgd"},
{rgdname="m36_jackson_squad.rgd", squadnum=2},

{path="attrib\\attrib\\sbps\\races\\axis\\soldiers"},
{rgdname="stormtrooper_squad.rgd"},
{rgdname="waffen_ss_squad.rgd"},
{rgdname="officer_squad.rgd"},

{path="attrib\\attrib\\sbps\\races\\axis\\vehicles"},
{rgdname="stug_iv_squad_upgrade.rgd"},
{rgdname="tigergruppen_tiger_squad.rgd", squads={SQUAD_SELF, "sbps\\races\\axis\\soldiers\\stormtrooper_squad.lua"}},
{rgdname="geschutzwagen_squad.rgd"},
{rgdname="Grille.rgd"},

{path="attrib\\attrib\\sbps\\races\\allies_commonwealth\\soldiers"},

{path="attrib\\attrib\\sbps\\races\\allies_commonwealth\\vehicles"},
{rgdname="kangaroo_carrier_squad.rgd"},
{rgdname="churchill_squad.rgd"},
{rgdname="churchill_avre_squad.rgd"},
{rgdname="priest_squad.rgd"},
{rgdname="staghound_armoured_car_squad.rgd"},

{path="attrib\\attrib\\sbps\\races\\axis_panzer_elite\\soldiers"},
{rgdname="luftwaffe_squad.rgd"},
{rgdname="panzer_falschirmjager.rgd"},

{path="attrib\\attrib\\sbps\\races\\axis_panzer_elite\\vehicles"},
{rgdname="panther_squad.rgd", squadnum=2},
{rgdname="wirblewind_flak_panzer_squad.rgd"},
{rgdname="hummel_squad.rgd"},
{rgdname="repair_squad.rgd"},

}

-- do not edit anything further unless you really know what you're doing, everything function should be controlled through variables
function each_file(rgd)
	local path = PATH
	local sbps_extra_data = SBPS_EXTRA_DATA
	local ebps_extra_data = EBPS_EXTRA_DATA
	local sbps_prefix = SBPS_PREFIX
	local sbps_postfix = SBPS_POSTFIX
	local ebps_prefix = EBPS_PREFIX
	local ebps_postfix = EBPS_POSTFIX
	local looplen = table.getn(squad_table)
	local i=1
	while i<=looplen do
		if squad_table[i]["skip"] then
			for j=i,table.getn(squad_table) do
				squad_table[j] = squad_table[j+1]
			end
			looplen=looplen-1
		else
			i = i+1
		end
	end
	i=1 while i<=looplen do
		if squad_table[i]["path"] then path = squad_table[i]["path"] end
		if squad_table[i]["sbps_extra_data"] then sbps_extra_data = squad_table[i]["sbps_extra_data"] end
		if squad_table[i]["ebps_extra_data"] then ebps_extra_data = squad_table[i]["ebps_extra_data"] end
		if squad_table[i]["ebps_prefix"] then ebps_prefix = squad_table[i]["ebps_prefix"] end
		if squad_table[i]["ebps_postfix"] then ebps_postfix = squad_table[i]["ebps_postfix"] end
		if squad_table[i]["sbps_prefix"] then sbps_prefix = squad_table[i]["sbps_prefix"] end
		if squad_table[i]["sbps_postfix"] then sbps_postfix = squad_table[i]["sbps_postfix"] end
		
		if squad_table[i]["rgdname"] and path.."\\"..squad_table[i]["rgdname"] == rgd.path then
			trace("@ ["..rgd.path.."]")
			
			local basename = string.sub(rgd.name, 0, string.len(rgd.name)-4)
			local sbps_newname
			
			if squad_table[i]["name"] then sbps_newname = squad_table[i]["name"] else sbps_newname = string.sub(basename, NAMECUT_START, NAMECUT_END) end
			if squad_table[i]["addprefix"]==true or (SBPS_ADDPREFIX and squad_table[i]["addprefix"]~=false) then
				sbps_newname = sbps_prefix..sbps_newname
			end
			if squad_table[i]["addpostfix"]==true or (SBPS_ADDPOSTFIX and squad_table[i]["addpostfix"]~=false) then
				sbps_newname = sbps_newname..sbps_postfix
			end
			
			sbps_newname = string.sub(rgd.path, 0, string.len(rgd.path)-string.len(rgd.name))..sbps_newname
			
			local loaded,newrgd = pcall(loadRgd, sbps_newname..".rgd")
			
			if OVERWRITE or not (loaded and newrgd) then
				local squads
				local delay
				local delay_start
				if squad_table[i]["delay"] then delay = squad_table[i]["delay"] else delay = DELAY end
				if squad_table[i]["delay_start"] then delay_start = squad_table[i]["delay_start"] else delay_start = DELAY_START end
				if squad_table[i]["squads"] then
					squads = squad_table[i]["squads"]
				else
					squads = {}
					local sn
					if squad_table[i]["squadnum"] then
						sn = squad_table[i]["squadnum"]
					else
						sn = SQUADNUM
					end
					for j=1,sn do
						squads[j] = SQUAD_SELF
					end
				end
				
				local gamepath = string.sub(string.sub(rgd.path, 0, string.len(rgd.path)-string.len(rgd.name)), 15)
				
				local squad_last = gamepath..basename..".lua"
				local loadout_count = 1
				local new_unitlist = {}
				local code_squads = ""
				new_unitlist["$REF"] = "tables\\unit_loadout_list.lua"
				local cur_delay = 0
				local squad_delay
				for j=1,table.getn(squads) do
					if squads[j] ~= SQUAD_NONE then
						local squad
						if squads[j] == SQUAD_SELF then
							squad = gamepath..basename..".lua"
						elseif squads[j] == SQUAD_LAST then
							squad = squad_last
						elseif squads[j] ~= SQUAD_NONE then
							squad = squads[j]
						end
						squad_last = squad
						trace(" - adding squad ["..squad.."]")
						local squad_rgd = pLoadRgd("attrib\\attrib\\"..string.sub(squad, 0, string.len(squad)-3).."rgd")
						local addedteamweapon = false
						for k in squad_rgd["GameData"]["squad_loadout_ext"]["unit_list"] do
							if squad_rgd["GameData"]["squad_loadout_ext"]["unit_list"][k]["type"] and string.len(squad_rgd["GameData"]["squad_loadout_ext"]["unit_list"][k]["type"]["type"])>4 then
								local ebps = pLoadRgd("attrib\\attrib\\"..string.sub(squad_rgd["GameData"]["squad_loadout_ext"]["unit_list"][k]["type"]["type"], 0, string.len(squad_rgd["GameData"]["squad_loadout_ext"]["unit_list"][k]["type"]["type"])-3).."rgd")
								ebps["GameData"]["entity_blueprint_ext"]["is_visible_in_game"] = false
								if ebps["GameData"]["health_ext"] then
									ebps["GameData"]["health_ext"]["is_invincible"] = true
								end
								if ebps["GameData"]["sight_ext"] then
									ebps["GameData"]["sight_ext"]["sight_package"]["inner_height"] = 0
									ebps["GameData"]["sight_ext"]["sight_package"]["inner_radius"] = 0
									ebps["GameData"]["sight_ext"]["sight_package"]["outer_height"] = 0
									ebps["GameData"]["sight_ext"]["sight_package"]["outer_radius"] = 0
									ebps["GameData"]["sight_ext"]["reveal_area_on_death_time"] = 0
									ebps["GameData"]["sight_ext"]["extended_sight"] = false
									ebps["GameData"]["sight_ext"]["extended_sight_radius"] = 0
									ebps["GameData"]["sight_ext"]["detect_camouflage"]["tp_global"] = 0
									ebps["GameData"]["sight_ext"]["detect_camouflage"]["tp_mine"] = 0
									ebps["GameData"]["sight_ext"]["detect_camouflage"]["apply_elevation_bonus"] = false
								end
								table_pasteInto(ebps["GameData"], ebps_extra_data)
								
								local ebps_newname = string.sub(ebps.name, EBPS_NAMECUT_START, EBPS_NAMECUT_END)
								if squad_table[i]["ebps_addprefix"]==true or (EBPS_ADDPREFIX and squad_table[i]["ebps_addprefix"]~=false) then
									ebps_newname = ebps_prefix..ebps_newname
								end
								if squad_table[i]["ebps_addpostfix"]==true or (ebps_addpostfix and squad_table[i]["ebps_addpostfix"]~=false) then
									ebps_newname = ebps_newname..ebps_postfix
								end
								ebps_newname = string.sub(ebps.path, 0, string.len(ebps.path)-string.len(ebps.name))..ebps_newname
								if savergds then
									trace(" - Saving EBPS as "..ebps_newname)
									ebps:saveAs(ebps_newname)
								end
								
								local teamweapon = squad_rgd["GameData"]["squad_loadout_ext"]["unit_list"][k]["type"]["$REF"] == "type_loadout\\sync_weapon.lua"
								if not teamweapon or addedteamweapon == false then
									local unitname = "unit_"
									if loadout_count <= 9 then unitname = unitname.."0" end
									unitname = unitname..loadout_count
									if addedteamweapon == false and teamweapon then
										addedteamweapon = true
									end
									new_unitlist[unitname] = {}
									new_unitlist[unitname]["$REF"] = "tables\\unit_loadout_info.lua"
									new_unitlist[unitname]["type"] = {}
									new_unitlist[unitname]["type"]["$REF"] = squad_rgd["GameData"]["squad_loadout_ext"]["unit_list"][k]["type"]["$REF"]
									new_unitlist[unitname]["type"]["type"] = string.sub(ebps_newname, 15, string.len(ebps_newname)-3).."lua"
									new_unitlist[unitname]["max"] = squad_rgd["GameData"]["squad_loadout_ext"]["unit_list"][k]["num"]
									new_unitlist[unitname]["num"] = squad_rgd["GameData"]["squad_loadout_ext"]["unit_list"][k]["num"]
									loadout_count = loadout_count+1
								end
							end
						end
						rgd["GameData"]["squad_loadout_ext"]["unit_list"] = new_unitlist
						
						if j==1 then squad_delay = delay_start
						else squad_delay = cur_delay+delay end
						code_squads = code_squads.."\n\t\t{"..string.format('%q', squad)..", "..squad_delay.."},"
						cur_delay = 0
					elseif j==1 then
						cur_delay = delay_start
					else
						cur_delay = cur_delay+delay
					end
				end
				
				if squad_table[i]["ui"] then
					trace("Updating RGD UI")
					if not rgd["GameData"]["squad_ui_ext"] then
						rgd["GameData"]["squad_ui_ext"] = loadBag("attrib\\attrib\\sbpextensions\\squad_ui_ext.rgd")
						rgd["GameData"]["squad_ui_ext"]["$REF"] = "sbpextensions\\squad_ui_ext.rgd"
					end
					for j,v in squad_table[i]["ui"] do
						trace(" - "..j.." = "..v)
						rgd["GameData"]["squad_ui_ext"][j] = v
					end
				end
				rgd["GameData"]["squad_action_apply_ext"] = loadBag("attrib\\attrib\\sbpextensions\\squad_action_apply_ext.rgd")
				rgd["GameData"]["squad_action_apply_ext"]["$REF"] = "sbpextensions\\squad_action_apply_ext.lua"
				rgd["GameData"]["squad_action_apply_ext"]["actions"]["ability_actions"]["action_01"] = loadBag("attrib\\attrib\\action\\ability_action\\scar_function_call.rgd")
				rgd["GameData"]["squad_action_apply_ext"]["actions"]["ability_actions"]["action_01"]["$REF"] = "action\\ability_action\\scar_function_call.lua"
				rgd["GameData"]["squad_action_apply_ext"]["actions"]["ability_actions"]["action_01"]["function_name"] = "Platoons_Check"
				table_pasteInto(rgd["GameData"], sbps_extra_data)
				if savergds then
					trace("Saving built data")
					trace(" - saving squad rgd ("..sbps_newname..".rgd)")
					rgd:saveAs(sbps_newname..".rgd")
				end
				
				codereturn = codereturn.."{BP_GetSquadBlueprint("..string.format('%q', string.sub(sbps_newname, 15)..".lua").."),\n\t{"..code_squads.."\n\t}},"
			else
				pritn("File allready exists, skipping")
			end
			if squad_table[i]["notes"] then
				trace(" #Notes for squad: "..squad_table[i]["notes"])
				codereturn = codereturn.."\n\t--[[ Notes: "..squad_table[i]["notes"].." ]]"
			end
			codereturn = codereturn.."\n"
			
			for j=i,table.getn(squad_table) do
				squad_table[j] = squad_table[j+1]
			end
			trace("")
			looplen=looplen-1
		else
			i=i+1
		end
	end
end
function at_end()
	local warnings = "path: "..PATH
	local foundmistake=false
	for i=1,table.getn(squad_table) do
		if squad_table[i]["path"] then
			warnings = warnings.."\npath: "..squad_table[i]["path"]
		end
		if squad_table[i]["rgdname"] then
			warnings = warnings.."\n  "..squad_table[i]["rgdname"]
			foundmistake=true
		end
	end
	if foundmistake then
		print("*** WARNING: The following RGDs were not found during the search and therefore no platoons were created for them!")
		print(warnings)
	end
	print("")
	print("")
	print("Generated code:")
	print("")
	print("PLATOONS = {")
	print(codereturn)
	print("}")
end
