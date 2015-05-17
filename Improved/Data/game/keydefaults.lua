
----------------------------------------------------------------------------------------------------------------
-- Grid Key Combo Bindings
-- (c) 2007 HoKa
-- (c) 2009 Flakker

-- Bindings use format "Control+Shift+A"

-- Valid keys
	--  a - Z   0 - 9
	-- Backspace Tab Enter Escape Space Apostrophe Comma
	-- Minus Period Slash Semicolon Equal LBracket Backslash RBracket Grave 
	-- Up Down Left Right Control Shift Alt CapsLock NumLock ScrollLock 
	-- Insert Delete Home End PageUp PageDown F1 F2 F3 F4 F5 F6 F7 F8 F9 F10 F11 F12 PrintScreen Pause 
	-- MouseLeft MouseRight MouseMiddle MouseTop xgcneaek MouseBottom 
	-- ScreenLeft ScreenRight ScreenTop ScreenBottom 
	-- Numpad0 Numpad1 Numpad2 Numpad3 Numpad4 Numpad5 Numpad6 
	-- Numpad7 Numpad8 Numpad9 NumpadMultiply NumpadPlus NumpadSeparator 
	-- NumpadMinus NumpadPeriod NumpadSlash 
	
bindings =
{
	----------------------------------------------------------------------------------------------------------------
	-- system commands
	----------------------------------------------------------------------------------------------------------------
	escape							="Escape",
	accept							="Enter",
	commandqueue						="Shift",
	pause							="Pause",
	systemmenu						="F10",
	company_commander					="Control+Space",
	select_focus						="Apostrophe",
	

	----------------------------------------------------------------------------------------------------------------
	-- tactical map commands
	----------------------------------------------------------------------------------------------------------------

	tactical_map						="Control+S",
	tm_exit							="Control+S",
	tm_reset 						="Backspace",
	tm_objectives 						="O",
	tm_toggle_rotate						="R",

	
	----------------------------------------------------------------------------------------------------------------
	-- Universal taskbar commands (any hotkeys used here cannot be used elsewhere)
	----------------------------------------------------------------------------------------------------------------
	
	builder_cycle						="Control+Q",
	infantry_cycle						="Control+W",
	vehicle_cycle						="Control+E",

	manage_hq						="F1",
	manage_barracks						="F2",
	manage_armory						="F3",
	manage_light_motorpool					="F4",
	manage_heavy_motorpool					="F5",
	manage_supply_yard					="F6",
	
	event_cue_cycle						="Space",
	
	-------------------------------------------
	-- Global Commands
	-------------------------------------------

	attack							="W",
	retreat							="R",
	repair							="D",
	reinforce							="F",
	attackground						="E",
	halt								="Q",
	rally								="V",
	unload							="A",
	common_ability						="O",

	ping_attack							="Control+A",
	ping_defend							="Control+D",
	ping_capture						="Control+C",

	cancel_construction						="Escape",
	retire								="Delete",


	-------------------------------------------
	-- Global Build
	-------------------------------------------

	build							="A",
	buildadv							="S",
	sand_bag							="E",
	land_mines						="A",
	barbed_wire	 					="S",
	tank_traps						="R",


	-------------------------------------------
	-- Global Abilties
	-------------------------------------------

	cut_wires						="Z",
	camouflage						="D",
	convert_ambient					="Q",
	hold_fire_toggle					="S",

	mortar_barrage					="Z",
	mortar_smoke_barrage				="X",
	


	--------------------------------------------------------------------------------------------------------------	
	-- multiple selection hotkeys
	--------------------------------------------------------------------------------------------------------------

	focus_primary_selection 						="Control+Tab",
	next_primary_selection  						="Tab",
	prev_primary_selection  						="Shift+Tab",
	-- checked with mouse click (removes clicked items from selection) 
	-- note: must only be one key
	remove_selection_modifier  						="Control",		
	-- checked with mouse click (selects all units of the same type) -- note: must only be one key
	crop_selection_modifier 						="Shift",	
	--same for axis**
	
	--------------------------------------------------------------------------------------------------------------
	-- hotkey group hotkeys
	--------------------------------------------------------------------------------------------------------------
	-- Select the group #
	
	hkgroup_select0							="0",
	hkgroup_select1							="1",
	hkgroup_select2							="2",
	hkgroup_select3							="3",
	hkgroup_select4							="4",
	hkgroup_select5							="5",
	hkgroup_select6							="6",
	hkgroup_select7							="7",
	hkgroup_select8							="8",
	hkgroup_select9							="9",

	-- Set the group to be the current selection
	
	hkgroup_set0							="Control+0",
	hkgroup_set1							="Control+1",
	hkgroup_set2							="Control+2",
	hkgroup_set3							="Control+3",
	hkgroup_set4							="Control+4",
	hkgroup_set5							="Control+5",
	hkgroup_set6							="Control+6",
	hkgroup_set7							="Control+7",
	hkgroup_set8							="Control+8",
	hkgroup_set9							="Control+9",


	-------------------------------------------
	------------------- Allies ------------------
	-------------------------------------------

	-- Global Allied Abilities

	allies_throw_grenade					="Z",
	allies_fireup_ability						="X",	


	-- Allies HQ
	
	allies_engineer						="Q",

	allies_upgrade_demolitions					="Z",
	allies_upgrade_wire_cutters					="X",


	-- Allies Engineer	

	allies_observation_post					="Q",

	allies_medic_station					="S",
	allies_mg							="D",
	allies_105mm_howitzer					="V",

	allies_barracks						="Q",
	allies_weapons_support_center				="W",
	allies_motor_pool						="E",
	allies_tank_depot						="R",
	allies_supply_yard						="A",
	allies_triage_center					="S",

	allies_upgrade_flamethrower					="T",
	allies_upgrade_minesweeper					="G",

	allies_plant_demolitions					="X",


		-- Allies 105mm Howitzer

		allies_howitzer_barrage					="Z",


	-- Allies Barracks

	allies_riflemen						="Q",
	allies_jeep						="W",

	allies_upgrade_grenades					="Z",
	allies_upgrade_stickybombs					="X",
	allies_upgrade_bar						="C",


		-- Allies Riflemen

		allies_throw_sticky_bomb					="X",
		allies_suppression_fire					="C",


		-- Allies Airborne

		allies_upgrade_recoilless_rifle				="T",

		allies_throw_satchel_charge					="C",


		-- Allies Rangers

		allies_upgrade_thompson_rifles				="T",
	

	-- Allies Weapon Support Center

	allies_mortar_team						="W",	
	allies_hmg						="Q",
	allies_sniper						="E",


		-- Allies HMG

		allies_armor_piercing_burst					="Z",


	-- Allies Motor Pool

	allies_m3_halftrack						="Q",
	allies_m8_armored_car					="W",
	allies_t17_armored_car							="W",
	allies_57mm_anti_tank_gun					="E",


		-- Allies M3 Halftrack

		allies_upgrade_quad_50_cal_maxson				="T",


		-- Allies M8 Armored Car

		allies_upgrade_m2hb_50_cal_machine_gun			="T",
		allies_upgrade_m8_greyhound_armor_skirts			="G",

		allies_greyhound_mines					="Z",


		-- Allies 57mm AT Gun

		allies_armor_piercing_shells					="Z",


	-- Allies Tank Depot

	allies_m10_tank_destroyer					="Q",
	allies_m18_hellcat						="Q",
	allies_m4_crocodile						="W",
	allies_m4_sherman						="E",

	allies_upgrade_76mm_gun					="X",
	allies_upgrade_smoke_screen				="Z",


		-- Allies Sherman Flamethrower
	
		allies_upgrade_sherman_bulldozer				="T",

		allies_bulldozer_toggle					="Z",


		-- Allies M4 Sherman

		allies_upgrade_sherman_crab				="G",
		allies_upgrade_sherman_m2hb_50_cal_machine_gun		="T",

		allies_fire_smoke_canister					="X",
		allies_crab_mine_clearing					="Z",


	-- Allies Supply Yard

	allies_supply_yard_upgrade1						="Q",
	allies_supply_yard_upgrade2						="W",


	-- Offmap Reinforcements

		-- Allies Calliope

		allies_calliope_barrage					="Z",



	-------------------------------------------
	-------------- Commonwealth -------------
	-------------------------------------------
	
	-- Global Commonwealth Hotkeys

	cmnw_set_up_truck						="Z",
	cmnw_mobilize_truck						="Z",
	cmnw_secured_resourcing						="T",
	cmnw_speed_governors						="G",

	cmnw_assume_cmd_position						="D",
	cmnw_forward_observation_barrage					="Z",

	cmnw_retreat_to_captain						="G",

	cmnw_build_slit_trench						="Q",
	cmnw_build_radio							="G",

	cmnw_tank_commander						="T",
	cmnw_hull_down							="V",
	cmnw_flank_speed							="X",
	cmnw_tank_shock							="C",

	cmnw_creeping_barrage						="X",
	cmnw_overwatch_barrage						="C",
	cmnw_counter_battery						="V",
	buildadv							="S",


	-- Headquarters

	buildadv							="S",
	cmnw_armoured_command_truck					="W",
	cmnw_field_command_truck						="Q",

	cmnw_infantry_section						="Q",
	cmnw_lieutenant							="W",
	cmnw_bren_carrier							="E",


		-- Tommy Squad

		cmnw_rifle_grenade_upgrade				="B",
		cmnw_recon_element_upgrade				="T",
		cmnw_bren_upgrade_upgrade				="G",

		cmnw_smoke_grenade					="Z",
		cmnw_deploy_marksman					="Z",
		cmnw_button_enemy_vehicle				="Z",

		cmnw_build_heavy_machine_gun_nest				="W",
		cmnw_build_mortar_nest					="E",
		cmnw_build_casualty_clearing_station 			="R",

		-- Bren Carrier

		cmnw_convert_hmg					="T",

		armor_piercing_burst					="Z",

	-- Lieutenant

	ally_heroic_charge						="X",


	-- Mortar Emplacement

	cmnw_mortar_bombardment						="Z",


	-- Howitzer Emplacement

	cmnw_25pounder_super_charge					="B",


	-- Casualty Clearing Station

	cmnw_medical_supplies						="Z",


	-- Infantry Headquarters

	cmnw_sapper_squad						="Q",
	cmnw_captain_squad						="W",
	cmnw_stuart_tank							="E",


		-- Sapper Squad

		cmnw_expert_engineer_upgrade				="B",
		cmnw_demolition_sapper_upgrade				="G",
		cmnw_piat_upgrade					="T",

		cmnw_demolition_charge					="X",
		cmnw_piat_ambush					="Z",

		cmnw_build_at_gun					="R",
		cmnw_build_howitzer					="D",
		cmnw_build_bofer						="S",
		
		
		-- Stuart Light Tank

		cmnw_fire_canister					="Z",


		-- Captain
		cmnw_victor_target					="X",


	-- Anti-Tank Gun Emplacement

	cmnw_armor_piercing_shells						="Z",
	cmnw_face_weapon						="X",


	-- Howitzer Gun Emplacement

	cmnw_25pounder_barrage						="Z",


	-- Armoured Headquarters

	cmnw_cromwell_tank						="Q",
	cmnw_kangaroo								="Q",
	cmnw_command_tank						="W",
	cmnw_staghound								="W",
	cmnw_firefly_tank							="E",

	
	-- Offmap Units


		-- Glider

		cmnw_commandos						="Q",


		-- Commandos

		cmnw_concealing_smoke					="C",
		cmnw_throw_grenade					="Z",
		cmnw_cmdo_demolition					="X",


		-- Tetrarch Glider

		cmnw_tetrarch						="Q",


		-- Tetrarch

		cmnw_littlejohn_adapter					="T",
		cmnw_fire_smoke_shell					="X",


		-- Glider Headquarters

		cmnw_commando_hmg_squad				="Q",
		cmnw_commando_mortar_squad				="W",
		cmnw_commando_piat_squad				="E",


		-- Priest

		cmnw_howitzer_barrage					="Z",


		-- Churchill AVRE

		cmnw_fire_petard_mortar_round				="X",


		-- Churchill Infantry Tank

		cmnw_mine_plow						="T",



	-------------------------------------------
	------------------- Axis -------------------
	-------------------------------------------

	-- Global Axis Abilities

	axis_medical_kit						="G",
	axis_assault						="X",
	axis_fire_panzerfaust					="X",


	-- Axis HQ

	axis_pioneer						="Q",
	
	axis_escalate_to_skirmish					="Z",
	axis_escalate_to_battle					="Z",
	axis_escalate_to_war					="Z",

	
	-- Axis Pioneer
	
	axis_observation_post					="Q",
	axis_bunker						="S",
	axis_88mm_flak						="D",

	axis_wehrmacht_quarters					="Q",
	axis_krieg_barracks					="W",
	axis_sturm_armory						="E",
	axis_panzer_command					="R",
	axis_kampfkraft_battleschool				="A",
	
	axis_upgrade_minesweeper					="T",
	axis_upgrade_flammenwerfer					="G",

	axis_salvage							="X",


	-- Axis Bunker

	axis_goliath							="S",

	axis_upgrade_bunker_mg42						="Z",
	axis_upgrade_bunker_aid_station					="X",
	axis_upgrade_bunker_repair_station					="C",


		-- Axis Goliath

		axis_goliath_detonate					="Z",


	-- Wehrmacht Quarters

	axis_motorcycle						="Q",
	axis_schwimmwagen							="Q",
	axis_volksgrenadier						="W",
	axis_hmg							="E",
	axis_sniper						="R",
	

		-- Axis Volksgrenadiers

		axis_upgrade_volks_mp40					="T",
	

	-- Krieg Barracks

	axis_halftrack						="Q",
	axis_grenadier						="W",
	axis_mortar_team						="E",
	axis_50mm_pak_38						="R",


		-- Axis Halftrack

		axis_upgrade_halftrack_flammenwerfer			="T",
		axis_upgrade_halftrack_stuka				="G",
	
		axis_stuka_rocket_barrage					="Z",


		-- Axis Grenadiers
	
		axis_upgrade_panzercheck					="T",
		axis_upgrade_mg42					="G",

		axis_throw_grenade					="Z",
	

	-- Sturm Armory

	axis_puma						="Q",
	axis_lieutenant						="W",
	axis_nebelwerfer						="E",
	axis_stug							="R",
	axis_geschutzwagen					="R",

		
		-- Axis Puma

		axis_upgrade_puma_50mm_turret				="T",

	
		-- Axis Lieutenant
	
		axis_observed_fire						="Z",
		axis_supervise_ability					="X",
		axis_force_retreat						="C",


		-- Axis Nebelwefer
	
		axis_nebelwerfer_barrage					="Z",


	-- Panzer Command
	
	axis_knights_cross						="Q",
	axis_ostwind_flakpanzer					="W",
	axis_panzer						="E",
	axis_panther						="R",


		-- Axis Stormtroopers

		axis_upgrade_mp44					="G",
	
		axis_throw_bundled_grenade					="Z",


	-- Kampfkraft Battleschool

	axis_train_veteran_infantry_level_1				="Q",
	axis_train_veteran_infantry_level_2				="Q",
	axis_train_veteran_infantry_level_3				="Q",

	axis_train_veteran_support_level_1				="W",
	axis_train_veteran_support_level_2				="W",
	axis_train_veteran_support_level_3				="W",

	axis_train_veteran_vehicles_level_1				="E",
	axis_train_veteran_vehicles_level_2				="E",
	axis_train_veteran_vehicles_level_3				="E",

	axis_train_veteran_tanks_level_1				="R",
	axis_train_veteran_tanks_level_2				="R",
	axis_train_veteran_tanks_level_3				="R",
	


	-------------------------------------------
	---------------- Panzer Elite---------------
	-------------------------------------------

	-- Global PanzerElite Hotkeys

	pe_Build_Logistik_Kompanie					="Q",
	pe_Build_Kampfgruppe_Kompanie					="W",
	pe_Build_Panzer_Jager_Kommand					="E",
	pe_Build_Panzer_Support_Kommand				="R",
	pe_Build_Teller_Mine						="A",
	pe_build_road_blocks						="A",

	pe_GrenadeAT							="X",
	pe_Grenade								="Z",
	pe_BoobyTrap							="S",
	pe_Incendiary_Grenade						="Z",
	pe_Scorched_Earth							="V",


	-- PanzerElite HQ

	pe_Grenadier							="Q",
	pe_Kettenkrad							="W",
	pe_Schwimmwagen							="W",
	pe_Scout_Car							="W",

	pe_Research_Incendiary						="Z",
	pe_Defensive_Operations						="X",
	pe_panther_battlegroup						="C",


	--PanzerElite Grenadiers

		pe_Gewehr43							="T",
		pe_MP44							="G",		
		pe_Panzershreck						="B",

		pe_Volley_Fire						="C",
		

	-- PanzerElite Logistik Companie
	
	pe_Scout_Car							="Q",
	pe_Munitions_Halftrack						="W",
	pe_Vampire							="E",

	pe_Research_Squad_Size						="X",
	pe_Research_GrenadeAT						="Z",


		-- Scout Car

		pe_Logistik_Upgrade					="T",


		-- Munitions Halftrack
	
		pe_Munitions_Halftrack_Maintain_Range			="D",		pe_munitions_halftrack_plant_mines				="Z",
		pe_Munitions_Halftrack_Goliath				="V",

		-- Vampire Halftrack

		pe_Vampire_Resources					="Z",


	-- PanzerElite Kampfgruppe Kompanie

	pe_Halftrack							="Q",
	pe_Mortar_Halftrack						="W",
	pe_Tankbuster							="E",

	pe_Research_Capture_Rate					="X",
	pe_Kampfgruppe_Kompanie_Upgrade				="Z",
	pe_Research_Repair_Upgrade					="C",

	-- PanzerElite Mortar Halftrack

		pe_Mortar_Bombardment					="Z",
		pe_Incendiary_Mortar_Round				="X",
		pe_Disable_Free_Fire					="S",


	-- PanzerElite Panzer-Jager Kommmand

		pe_Assault_Grenadiers					="Q",
		pe_Armoured_Car						="W",
		pe_Marder							="E",

	pe_Research_Zeal							="X",
	pe_Jager_Kommand_Upgrade					="Z",

	-- PanzerElite Armored Car					
		pe_Overdrive						="Z",

	-- PanzerElite Marder
		pe_site_main_gun						="Z",

	-- PanzerElite Support Command

	pe_Light_AT_Halftrack						="Q",
	pe_Panzer_Infantry_Tank						="E",
	pe_Hotchkiss							="E",
	pe_Bergetiger							="W",

	pe_Support_Kommand_Upgrade					="Z",
	pe_Research_Veteran						="X",


		-- Light AT Halftrack

		pe_Tread_Breaker						="Z",
		pe_Focused_Firing						="X",


		-- PanzerElite Panzer IV

		pe_Armour_Skirts						="G",	
		pe_MG42_Gunner						="T",
		pe_Rapid_Fire						="Z",

		-- Bergetiger

		pe_recover_wreck						="Z",


	-- Offmap Units


		-- PanzerElite Hummel
		
		pe_Rapid_Fire_Artillery					="X",
		pe_Hummel_Barrage						="Z",


		-- PanzerElite FallschrimJager

		pe_Fire_Panzerfaust					="X",
		pe_Sprint							="V",
		pe_FG42							="T",
		pe_Building_Incendiary_Device				="Z",


		-- PanzerElite Lufftwaffe Crew

		pe_Flak20MM						="Q",
		pe_Flak88						="R",


		-- PanzerElite Logistik Car

		pe_Secure_Sector						="Z",


		-- PanzerElite Heltzer

		pe_Spotting_Scope					="T",		


	-- Veterancy

	pe_defensive_1							="G",
	pe_defensive_2							="G",
	pe_defensive_3							="G",

	pe_offensive_1							="T",
	pe_offensive_2							="T",
	pe_offensive_3							="T",

-- Panzerkrieg
	
	-- Universal Abilities
	tw_direct_fire 								="A",
	tw_defensive_infantry 							="S",
	
	-- Radio Tower Abilities
		-- Allies
		tw_recon_run 							="N",
		tw_strafing_run 						="T",
		tw_bombing_run 							="B",
		-- Axis
		tw_flares 							="V",
		tw_firestorm 							="T",
		tw_henschel 							="Q",
		
	-- Barrack Abilities
	tw_infantry_support 							="U",
	tw_stealth_infantry_support 						="Y",
		
	-- Allies
	
	-- M18 Hellcat
	tw_armor_piercing_shell							="D",
	tw_mark_target 								="V",
	tw_observational_status 						="Z",
	tw_ambush									="X",
	tw_flank_speed 								="C",
	tw_hawkins_mine 								="V",
	
	-- M4 Sherman
	tw_armor_piercing_shell							="D",
	tw_long_range_shell 							="V",
	tw_mine_clearing 								="Z",
	tw_flank_speed 								="C",
	tw_fire_smoke_shell							="V",

	-- Churchill
	tw_group_field_repairs 							="D",
	tw_hull_down 								="V",
	tw_heroic_charge 								="Z",
	tw_flank_speed 								="C",
	tw_tread_breaker 								="V",
	
	-- Axis
	
	-- Hotchkiss
	tw_stun_shot 								="D",
	tw_mark_target 								="V",
	tw_camouflage 								="Z",
	tw_salvage 									="X",
	tw_stuka_rocket_barrage 						="C",
	tw_hotchkiss_mine 							="V",
	
	-- Panzer IV
	tw_armor_piercing_shell							="D",
	tw_triple_shot 								="V",
	tw_rapid_fire 								="Z",
	tw_overdrive 								="C",
	tw_self_repair 								="V",
	
	-- Panther
	tw_sight_main_gun 							="D",
	tw_blitzkrieg 								="V",
	tw_observational_status							="Z",
	tw_precision_artillery 							="X",
	tw_white_phosphorus_shell 						="C",
	tw_fire_smoke_shell							="V",

-- Assault

	-- Allies
		-- Heroic Unit Abilities

		heroic_incendiary_grenade					="Y",
		heroic_incendiary_trap						="P",
		heroic_morale_command						="M",
		heroic_overdrive							="O",
		heroic_OMA								="B",
		heroic_sprint							="A",
		heroic_vehicle_self_repair					="C",
		heroic_assisted_bombardment					="M",

		-- Hero Respawn
	
		-- Demolitions Engineer (Defensive)
			push_respawn 						="W",

		-- Saboteur Engineer (Offensive)
			push_satchel_charge 					="C",
			
		-- Guardian Commando (Defensive)
			push_concealing_smoke 					="V",
			
		-- Aggressor Commando (Offensive)
		
		-- Base Medic (Defensive)
			push_burst_heal 						="X",
			
		-- Field Medic (Offensive)
			push_scorch 						="C",
			
		-- Cunning Officer (Defensive)
			push_camouflage 						="C",
			
		-- Inspirational Officer (Offensive)
			push_inspired_command 					="X",
			
		-- Defender Heavy Weapon Specialist (Defensive)
			push_grit 							="X",
			
		-- Storm Heavy Weapon Specialist (Offensive)
			push_heroic_charge 					="V",
			
		-- Observation Scout (Defensive)
		
		-- Vanguard Scout (Offensive)
		
		-- Infiltrator Sniper (Defensive)
		
		-- Marksman Sniper (Offensive)
			push_vital_shot						="C",
			
		-- Daredevil Recon (Defensive)
		
		-- Illuminator Recon (Offensive)
			push_flare 							="X",

		-- Hero Spawn Selection
			-- Applied same way for both Axis and Allies
	
		--Engineer/Pioneer
			push_engineer_pioneer 					="Q",

		--Commando
			push_commando 						="W",

		--Medic
			push_medic 							="E",

		--Officer
			push_officer 						="R",
		
		--Heavy Weapons
			push_heavy 							="A",
		
		--Recon
			push_recon 							="S",

		--Scout
			push_scout 							="D",
		
		--Sniper
			push_sniper							="D",
		
		--Offensive/Defensive
			push_defensive_unit 					="A",
			push_offensive_unit 					="Q",
			
		--	Generic Unlocks
			push_speed_upgrade 					="J",
			push_armor_upgrade 					="K",
			push_damage_upgrade 					="L",
			push_grenade_upgrade 					="U",

	-- Axis
		-- Heroic Unit Abilities

		heroic_blitz_charge						="Z",
		heroic_crippling_trap						="L",
		heroic_defensive_maneuvers					="M",
		heroic_explosive_panzerfaust					="Z",
		heroic_heartening_shout						="U",
		heroic_inspired_command						="M",
		heroic_mark_target						="V",
		heroic_observational_status					="O",
		heroic_power_walk							="P",
		heroic_sprint							="A",
			
}
