----------------------------------------------------------------------------------------------------------------
-- Default Key Combo Bindings
-- (c) 2006 Relic Entertainment


-- These combos should NOT be changed by the user.
-- They are here in case the user screws up the key bindings file in Root/KeyBindings/

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

	escape								="Escape",
	accept								="Enter",
	commandqueue							="Shift",
	pause								="Pause",
	systemmenu							="F10",
	select_focus							="Apostrophe",
	company_commander						="Control+Z",


	----------------------------------------------------------------------------------------------------------------
	-- tactical map commands
	----------------------------------------------------------------------------------------------------------------

	tactical_map							="Numpad0",
	tm_exit								="Numpad0",
	tm_reset 							="Backspace",
	tm_objectives 							="O",
	tm_toggle_rotate						="R",


	
	----------------------------------------------------------------------------------------------------------------
	-- Universal taskbar commands (any hotkeys used here cannot be used elsewhere)
	----------------------------------------------------------------------------------------------------------------
	
	builder_cycle							="Comma",
	infantry_cycle							="Period",
	vehicle_cycle							="Slash",

	manage_hq							="F1",
	manage_barracks							="F2",
	manage_armory							="F3",
	manage_light_motorpool						="F4",
	manage_heavy_motorpool						="F5",
	manage_supply_yard						="F6",
	
	event_cue_cycle							="Space",



	-------------------------------------------
	-- Global Commands
	-------------------------------------------

	attack								="A",
	retreat								="T",
	repair								="E",
	reinforce							="R",
	attackground							="G",
	halt								="H",
	rally								="Y",
	deployheroes							="D",
	unload								="D",
	common_ability							="O",

	ping_attack							="Control+A",
	ping_defend							="Control+D",
	ping_capture							="Control+C",

	cancel_construction						="Escape",
	retire								="Delete",



	-------------------------------------------
	-- Global Build
	-------------------------------------------

	build								="B",
	buildadv							="V",
	sand_bag							="S",
	land_mines							="M",
	land_mines_tricky						="T",
	land_mines_heavy						="H",
	barbed_wire		 					="W",
	tank_traps							="T",



	-------------------------------------------
	-- Global Abilties
	-------------------------------------------

	cut_wires							="W",
	camouflage							="C",
	convert_ambient							="B",
	hold_fire_toggle						="D",

	mortar_barrage							="B",
	mortar_smoke_barrage						="S",
	


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



	---------------------------------------------
	------------------- Allies ------------------
	---------------------------------------------

	-- Global Allied Abilities

	allies_throw_grenade							="N",
	allies_fireup_ability							="F",	


	-- Allies HQ
	
	allies_engineer								="E",

	allies_upgrade_demolitions						="O",
	allies_upgrade_wire_cutters						="C",


		-- Allies Engineer	

		allies_observation_post						="P",

		allies_medic_station						="N",
		allies_mg							="E",
		allies_105mm_howitzer						="H",

		allies_barracks							="B",
		allies_weapons_support_center					="W",
		allies_motor_pool						="M",
		allies_tank_depot						="T",
		allies_supply_yard						="S",
		allies_triage_center						="C",

		allies_upgrade_flamethrower					="F",
		allies_upgrade_minesweeper					="N",

		allies_plant_demolitions					="O",


			-- Allies 105mm Howitzer

			allies_howitzer_barrage					="B",


	-- Allies Barracks

	allies_riflemen								="R",
	allies_jeep								="J",

	allies_upgrade_grenades							="N",
	allies_upgrade_stickybombs						="S",
	allies_upgrade_bar							="B",


		-- Allies Riflemen

		allies_throw_sticky_bomb					="S",
		allies_suppression_fire						="F",


	-- Allies Weapon Support Center

	allies_mortar_team							="M",	
	allies_hmg								="H",
	allies_sniper								="S",


		-- Allies HMG

		allies_armor_piercing_burst					="P",


	-- Allies Motor Pool

	allies_m3_halftrack							="H",
	allies_m8_armored_car							="A",
	allies_57mm_anti_tank_gun						="T",
	allies_t17_armored_car							="C",


		-- Allies M3 Halftrack

		allies_upgrade_quad_50_cal_maxson				="Q",


		-- Allies M8 Armored Car

		allies_upgrade_m2hb_50_cal_machine_gun				="U",
		allies_upgrade_m8_greyhound_armor_skirts			="S",

		allies_greyhound_mines						="M",


		-- Allies 57mm AT Gun

		allies_armor_piercing_shells					="P",


	-- Allies Tank Depot

	allies_m10_tank_destroyer						="M",
	allies_m4_crocodile							="C",
	allies_m4_sherman							="S",
	allies_m18_hellcat							="H",

	allies_upgrade_76mm_gun							="U",
	allies_upgrade_smoke_screen						="N",


		-- Allies Sherman Flamethrower
	
		allies_upgrade_sherman_bulldozer				="B",

		allies_bulldozer_toggle						="B",


		-- Allies M4 Sherman

		allies_upgrade_sherman_crab					="C",
		allies_upgrade_sherman_m2hb_50_cal_machine_gun			="U",

		allies_fire_smoke_canister					="S",
		allies_crab_mine_clearing					="C",


	-- Allies Supply Yard

	allies_supply_yard_upgrade1						="U",
	allies_supply_yard_upgrade2						="U",


	-- Offmap Reinforcements

		-- Allies Airborne

		allies_upgrade_recoilless_rifle					="O",

		allies_throw_satchel_charge					="L",


		-- Allies Rangers

		allies_upgrade_thompson_rifles					="P",


		-- Allies Calliope

		allies_calliope_barrage						="B",


		-- Allies Pershing

		allies_long_range_shell						="L",



			------------- HEROES -------------

		-- Allies HQ Heroes

	allies_advanceddefenses_engineers					="A",
	allies_repair_engineers							="R",
	allies_demolitions_engineers						="D",
	allies_charismatic_engineers						="C",
	allies_pyrotechnic_engineers						="P",
	allies_elite_engineers							="E",


		-- Allies Barracks Heroes

	allies_builder_riflemen							="B",
	allies_weaponsutility_riflemen						="U",
	allies_skilled_riflemen							="R",
	allies_trailblazer_riflemen						="T",
	allies_weaponsspecialist_riflemen					="W",
	allies_gladiator_riflemen						="G",

	allies_assault_jeep							="A",
	allies_skilled_jeep							="J",
	allies_forwardobservation_jeep						="O",


		-- Allies Weapon Support Center Heroes

	allies_armourdefense_hmg						="A",
	allies_skilled_hmg							="H",
	allies_camouflage_hmg							="C",

	allies_survival_sniper							="V",
	allies_specialoperations_sniper						="O",

	allies_skilled_mortar							="M",
	allies_destructive_mortar						="D",


		-- Allies Motorpool Heroes

	allies_support_halftrack						="S",
	allies_50cal_halftrack							="C",

	allies_armored_greyhound						="A",
	allies_skilled_greyhound						="G",
	allies_recon_greyhound							="E",
	allies_armorpiercing_greyhound						="P",

	allies_hummingbird_atgun						="H",
	allies_armourbreaking_atgun						="B",

	allies_skilled_rangers							="R",
	allies_assault_rangers							="A",


		-- Allies Tank Depot Heroes

	allies_durable_m10							="R",
	allies_skilled_m10							="M",
	allies_field_m10							="F",

	allies_skilled_sherman							="S",
	allies_durable_sherman							="N",	
	allies_ace_sherman							="A",

	allies_skilled_crocodile						="C",
	allies_durable_crocodile						="E",


		-- Heroic Unit Abilities

		heroic_incendiary_grenade					="Y",
		heroic_incendiary_trap						="P",
		heroic_morale_command						="M",
		heroic_overdrive						="O",
		heroic_OMA							="B",
		heroic_sprint							="I",
		heroic_vehicle_self_repair					="E",
		heroic_assisted_bombardment					="M",




	-------------------------------------------
	-------------- Commonwealth -------------
	-------------------------------------------
	
	-- Global Commonwealth Hotkeys

	cmnw_set_up_truck							="M",
	cmnw_mobilize_truck							="M",
	cmnw_secured_resourcing							="R",
	cmnw_speed_governors							="G",

	cmnw_assume_cmd_position						="P",
	cmnw_forward_observation_barrage					="B",

	cmnw_retreat_to_captain							="W",

	cmnw_build_slit_trench							="T",
	cmnw_build_radio							="R",

	cmnw_tank_commander							="T",
	cmnw_hull_down								="D",
	cmnw_flank_speed							="F",
	cmnw_tank_shock								="S",

	cmnw_creeping_barrage							="C",
	cmnw_overwatch_barrage							="O",
	cmnw_counter_battery							="N",


	-- Headquarters

	cmnw_armoured_command_truck						="A",
	cmnw_field_command_truck						="F",

	cmnw_infantry_section							="I",
	cmnw_lieutenant								="L",
	cmnw_bren_carrier							="B",


		-- Tommy Squad

		cmnw_rifle_grenade_upgrade					="N",
		cmnw_recon_element_upgrade					="E",
		cmnw_bren_upgrade_upgrade					="M",

		cmnw_smoke_grenade						="S",
		cmnw_deploy_marksman						="D",
		cmnw_button_enemy_vehicle					="V",

		cmnw_build_heavy_machine_gun_nest				="H",
		cmnw_build_mortar_nest						="M",
		cmnw_build_casualty_clearing_station 				="C",

		-- Bren Carrier

		cmnw_convert_hmg						="C",

		armor_piercing_burst						="P",


	-- Lieutenant

	cmnw_heroic_charge							="C",


	-- Mortar Emplacement

	cmnw_mortar_bombardment							="B",


	-- Howitzer Emplacement

	cmnw_25pounder_super_charge						="B",


	-- Casualty Clearing Station

	cmnw_medical_supplies							="M",


	-- Infantry Headquarters

	cmnw_sapper_squad							="S",
	cmnw_captain_squad							="C",
	cmnw_stuart_tank							="T",


		-- Sapper Squad

		cmnw_expert_engineer_upgrade					="X",
		cmnw_demolition_sapper_upgrade					="D",
		cmnw_piat_upgrade						="P",

		cmnw_demolition_charge						="O",
		cmnw_piat_ambush						="P",

		cmnw_build_at_gun						="A",
		cmnw_build_howitzer						="H",
		cmnw_build_bofer						="B",
		
		
		-- Stuart Light Tank

		cmnw_fire_canister						="F",


		-- Captain

		cmnw_victor_target						="V",


	-- Anti-Tank Gun Emplacement

	cmnw_armor_piercing_shells						="P",
	cmnw_face_weapon							="F",


	-- Howitzer Gun Emplacement

	cmnw_25pounder_barrage							="B",


	-- Armoured Headquarters

	cmnw_cromwell_tank							="C",
	cmnw_command_tank							="T",
	cmnw_firefly_tank							="F",
	cmnw_staghound								="S",
	cmnw_kangaroo								="K",

	
	-- Offmap Units

		-- Glider

		cmnw_commandos							="C",


		-- Commandos

		cmnw_concealing_smoke						="S",
		cmnw_throw_grenade						="N",
		cmnw_cmdo_demolition						="O",


		-- Tetrarch Glider

		cmnw_tetrarch							="T",


		-- Tetrarch

		cmnw_littlejohn_adapter						="L",
		cmnw_fire_smoke_shell						="S",


		-- Glider Headquarters

		cmnw_commando_hmg_squad						="H",
		cmnw_commando_mortar_squad					="M",
		cmnw_commando_piat_squad					="P",


		-- Priest

		cmnw_howitzer_barrage						="B",


		-- Churchill AVRE

		cmnw_fire_petard_mortar_round					="P",


		-- Churchill Infantry Tank

		cmnw_mine_plow							="M",



	-------------------------------------------
	------------------- Axis -------------------
	-------------------------------------------

	-- Global Axis Abilities

	axis_medical_kit							="K",
	axis_assault								="L",
	axis_fire_panzerfaust							="Z",


	-- Axis HQ

	axis_pioneer								="P",

	axis_escalate_to_skirmish						="E",
	axis_escalate_to_battle							="E",
	axis_escalate_to_war							="E",

			
		-- Axis Pioneer
	
		axis_observation_post						="P",
		axis_bunker							="B",
		axis_88mm_flak							="F",

		axis_wehrmacht_quarters						="W",
		axis_krieg_barracks						="B",
		axis_sturm_armory						="S",
		axis_panzer_command						="P",
		axis_kampfkraft_battleschool					="K",
	
		axis_upgrade_minesweeper					="N",
		axis_upgrade_flammenwerfer					="F",

		axis_salvage							="S",


	-- Axis Bunker

	axis_goliath								="G",

	axis_upgrade_bunker_mg42						="M",
	axis_upgrade_bunker_aid_station						="A",
	axis_upgrade_bunker_repair_station					="R",


		-- Axis Goliath

		axis_goliath_detonate						="D",


	-- Wehrmacht Quarters

	axis_motorcycle								="M",
	axis_volksgrenadier							="V",
	axis_hmg								="H",
	axis_sniper								="S",
	axis_schwimmwagen							="W",


		-- Axis Volksgrenadiers

		axis_upgrade_volks_mp40						="U",
	

	-- Krieg Barracks

	axis_halftrack								="H",
	axis_grenadier								="G",
	axis_mortar_team							="M",
	axis_50mm_pak_38							="P",


		-- Axis Halftrack

		axis_upgrade_halftrack_flammenwerfer				="F",
		axis_upgrade_halftrack_stuka					="S",
	
		axis_stuka_rocket_barrage					="B",


		-- Axis Grenadiers
	
		axis_upgrade_panzercheck					="P",
		axis_upgrade_mg42						="U",

		axis_throw_grenade						="N",
	

	-- Sturm Armory

	axis_puma								="P",
	axis_lieutenant								="L",
	axis_nebelwerfer							="N",
	axis_stug								="S",
	axis_geschutzwagen							="G",

		
		-- Axis Puma

		axis_upgrade_puma_50mm_turret					="U",

	
		-- Axis Lieutenant
	
		axis_observed_fire						="B",
		axis_supervise_ability						="V",
		axis_force_retreat						="F",


		-- Axis Nebelwefer
	
		axis_nebelwerfer_barrage					="B",


	-- Panzer Command
	
	axis_knights_cross							="K",
	axis_ostwind_flakpanzer							="O",
	axis_panzer								="Z",
	axis_panther								="P",


	-- Offmap Units


		-- Axis Stormtroopers

		axis_upgrade_mp44						="U",
		axis_stormtrooper						="S",

		axis_throw_bundled_grenade					="B",


		-- Axis Terror Officer

		axis_officer_execute						="E",


		-- Axis Contracted Reinforcements

		axis_contracted_aid_bunker					="A",
		axis_contracted_repair_bunker					="R",
		axis_contracted_mg42_bunker					="B",
		axis_contracted_flak88						="F",						


	-- Kampfkraft Battleschool

	axis_train_veteran_infantry_level_1					="I",
	axis_train_veteran_infantry_level_2					="I",
	axis_train_veteran_infantry_level_3					="I",

	axis_train_veteran_support_level_1					="W",
	axis_train_veteran_support_level_2					="W",
	axis_train_veteran_support_level_3					="W",

	axis_train_veteran_vehicles_level_1					="V",
	axis_train_veteran_vehicles_level_2					="V",
	axis_train_veteran_vehicles_level_3					="V",

	axis_train_veteran_tanks_level_1					="T",
	axis_train_veteran_tanks_level_2					="T",
	axis_train_veteran_tanks_level_3					="T",


			------------- HEROES -------------

		-- Axis HQ Heroes

	axis_combat_pioneers							="C",
	axis_field_pioneers							="F",
	axis_tankhunter_pioneers						="H",
	axis_construction_pioneers						="T",
	axis_specialops_pioneers						="S",


		-- Axis Wehrmacht Quarters Heroes

	axis_accomplished_motorcycle						="M",
	axis_grenadier_motorcycle						="G",
	axis_fritz_motorcycle							="Z",

	axis_closecombat_volksgrenadiers					="C",
	axis_geriatric_volksgrenadiers						="T",
	axis_accomplished_volksgrenadiers					="V",
	axis_demolitions_volksgrenadiers					="D",
	axis_bargain_volksgrenadiers						="B",

	axis_accomplished_hmg							="H",
	axis_durable_hmg							="U",
	axis_fatherland_hmg							="L",
	axis_opencombat_hmg							="O",

	axis_fieldspecialist_sniper						="F",
	axis_eagleeye_sniper							="E",


		-- Axis Krieg Barracks Heroes

	axis_flame_halftrack							="F",

	axis_prepared_grenadiers						="P",
	axis_distinguished_grenadiers						="D",
	axis_survivalist_grenadiers						="V",

	axis_accomplished_mortar						="M",

	axis_cheetah_pak38							="C",

	axis_brute_stormtroopers						="B",
	axis_accomplished_stormtroopers						="S",


		-- Axis Sturm Armoy Heroes

	axis_armourhunter_puma							="H",
	axis_accomplished_puma							="P",

	axis_combatcommand_officer						="C",
	axis_superintendent_officer						="I",

	axis_mammoth_stug							="M",
	axis_accomplished_stug							="S",

	axis_armoured_goliath							="A",


		-- Axis Panzer Command Heroes

	axis_accomplished_kch							="K",

	axis_accomplished_ostwind						="O",
	axis_enhanced_ostwind							="E",

	axis_accomplished_panzeriv						="Z",
	axis_command_panzeriv							="C",

	axis_accomplished_panther						="P",
	axis_amourdestroyer_panther						="A",


		-- Heroic Unit Abilities

		heroic_blitz_charge						="Z",
		heroic_crippling_trap						="L",
		heroic_defensive_maneuvers					="M",
		heroic_explosive_panzerfaust					="Z",
		heroic_heartening_shout						="U",
		heroic_inspired_command						="M",
		heroic_mark_target						="M",
		heroic_observational_status					="O",
		heroic_power_walk						="P",
		heroic_sprint							="I",



	-------------------------------------------
	---------------- Panzer Elite---------------
	-------------------------------------------

	-- Global PanzerElite Hotkeys

	pe_Build_Logistik_Kompanie						="L",
	pe_Build_Kampfgruppe_Kompanie						="K",
	pe_Build_Panzer_Jager_Kommand						="J",
	pe_Build_Panzer_Support_Kommand						="S",
	pe_Build_Teller_Mine							="M",
	pe_build_road_blocks							="R",

	pe_GrenadeAT								="K",
	pe_Grenade								="N",
	pe_BoobyTrap								="Y",
	pe_Incendiary_Grenade							="N",
	pe_Scorched_Earth							="C",


	-- PanzerElite HQ

	pe_Grenadier								="G",
	pe_Kettenkrad								="K",
	pe_Schwimmwagen								="W",

	pe_panther_battlegroup							="P",

	pe_Research_Incendiary							="N",
	pe_Defensive_Operations							="D",


		--PanzerElite Grenadiers

		pe_Gewehr43							="G",
		pe_MP44								="M",		
		pe_Panzershreck							="P",

		pe_Volley_Fire							="V",
		

	-- PanzerElite Logistik Companie
	
	pe_Scout_Car								="S",
	pe_Munitions_Halftrack							="M",
	pe_Vampire								="V",

	pe_Research_Squad_Size							="I",
	pe_Research_GrenadeAT							="A",


		-- Scout Car

		pe_Logistik_Upgrade						="L",


		-- Munitions Halftrack
	
		pe_Munitions_Halftrack_Maintain_Range				="M",		
		pe_munitions_halftrack_plant_mines				="N",
		pe_Munitions_Halftrack_Goliath					="G",


		-- Vampire Halftrack

		pe_Vampire_Resources						="S",


	-- PanzerElite Kampfgruppe Kompanie

	pe_Halftrack								="H",
	pe_Mortar_Halftrack							="M",
	pe_Tankbuster								="G",

	pe_Research_Capture_Rate						="C",
	pe_Kampfgruppe_Kompanie_Upgrade						="U",
	pe_Research_Repair_Upgrade						="E",


		-- PanzerElite Mortar Halftrack

		pe_Mortar_Bombardment						="B",
		pe_Incendiary_Mortar_Round					="N",
		pe_Disable_Free_Fire						="F",


	-- PanzerElite Panzer-Jager Kommmand

	pe_Assault_Grenadiers							="G",
	pe_Armoured_Car								="C",
	pe_Marder								="M",

	pe_Research_Zeal							="Z",
	pe_Jager_Kommand_Upgrade						="U",


		-- PanzerElite Armored Car
							
		pe_Overdrive							="V",


		-- PanzerElite Marder

		pe_site_main_gun						="S",


	-- PanzerElite Support Kommand

	pe_Light_AT_Halftrack							="H",
	pe_Panzer_Infantry_Tank							="P",
	pe_Bergetiger								="B",
	pe_Hotchkiss								="K",

	pe_Support_Kommand_Upgrade						="U",
	pe_Research_Veteran							="V",


		-- Light AT Halftrack

		pe_Tread_Breaker						="B",
		pe_Focused_Firing						="F",


		-- PanzerElite Panzer IV

		pe_Armour_Skirts						="S",	
		pe_MG42_Gunner							="M",
		pe_Rapid_Fire							="R",


		-- Bergetiger

		pe_recover_wreck						="R",


		-- Hotchkiss

		pe_Hotchkiss_cannon						="C",


	-- Offmap Units


		-- PanzerElite Hummel
		
		pe_Rapid_Fire_Artillery						="C",
		pe_Hummel_Barrage						="B",


		-- PanzerElite FallschrimJager

		pe_Fire_Panzerfaust						="Z",
		pe_Sprint							="I",
		pe_FG42								="M",
		pe_Building_Incendiary_Device					="N",


		-- PanzerElite Lufftwaffe Crew

		pe_Flak20MM							="V",
		pe_Flak88							="F",


		-- PanzerElite Logistik Car

		pe_Secure_Sector						="S",


		-- PanzerElite Heltzer

		pe_Spotting_Scope						="S",		


	-- Veterancy

	pe_defensive_1								="D",
	pe_defensive_2								="D",
	pe_defensive_3								="D",

	pe_offensive_1								="O",
	pe_offensive_2								="O",
	pe_offensive_3								="O",



	-------------------------------------------
	--------------- UMS Bindings --------------
	-------------------------------------------
	
	-- PUSH
	
	-- Hero Respawn
	
	
	-- Allied Abilities
		-- Demolitions Engineer (Defensive)
			push_respawn 						="W",
		-- Saboteur Engineer (Offensive)
			push_satchel_charge 					="T",
			
		-- Guardian Commando (Defensive)
			push_concealing_smoke 					="S",
			
		-- Aggressor Commando (Offensive)
		
		-- Base Medic (Defensive)
			push_burst_heal 					="B",
			
		-- Field Medic (Offensive)
			push_scorch 						="S",
			
		-- Cunning Officer (Defensive)
			push_camouflage 					="C",
			
		-- Inspirational Officer (Offensive)
			push_inspired_command 					="R",
			
		-- Defender Heavy Weapon Specialist (Defensive)
			push_grit 						="G",
			
		-- Storm Heavy Weapon Specialist (Offensive)
			push_heroic_charge 					="C",
			
		-- Observation Scout (Defensive)
		
		-- Vanguard Scout (Offensive)
		
		-- Infiltrator Sniper (Defensive)
		
		-- Marksman Sniper (Offensive)
			push_vital_shot						="V",
			
		-- Daredevil Recon (Defensive)
		
		-- Illuminator Recon (Offensive)
			push_flare 						="F",
	
	
	-- Axis
	
	-- shares same abilities as Allied
	
	
	-- Hero Spawn Selection
	-- Applied same way for both Axis and Allies
	
		--Engineer/Pioneer
		push_engineer_pioneer 						="E",
		--Commando
		push_commando 							="C",
		--Medic
		push_medic 							="M",
		--Officer
		push_officer 							="O",
		--Heavy Weapons
		push_heavy 							="H",
		--Scout
		push_scout 							="S",
		--Sniper
		push_sniper							="P",
		--Recon
		push_recon 							="R",
		
		--Offensive/Defensive
		push_defensive_unit 						="D",
		push_offensive_unit 						="F",
		
		
		
	--	Generic Unlocks
	
		push_speed_upgrade 						="J",
		push_armor_upgrade 						="K",
		push_damage_upgrade 						="L",
		push_grenade_upgrade 						="U",
	
	-- INVASION
	
	-- Allies Spawn Units
	-- These have been assigned hotkeys specifically for Invasion
	-- Rangers
	invasion_ranger 							="A",
	-- Pershing
	invasion_pershing 							="P",
	
	
	-- Axis Spawn Units
	-- Tiger
	invasion_king_tiger 							="K",
	invasion_tiger 								="G",
	-- Puma
	invasion_puma 								="U",
	
		-- Upgrades and Unlocks
	
	soldier_unlock 								="L",
	vehicle_unlock 								="I",
	popcap_upgrade 								="P",
	
	-- Menus
	invasion_vehicle_menu 							="V",
	invasion_soldier_menu 							="D",
	invasion_smoke_screen 							="C",

-- Panzerkrieg
	
	-- Universal Abilities
	tw_direct_fire 								="D",
	tw_defensive_infantry 							="I",
	
	-- Radio Tower Abilities
		-- Allies
		tw_recon_run 							="N",
		tw_strafing_run 						="T",
		tw_bombing_run 							="B",
		-- Axis
		tw_flares 							="F",
		tw_firestorm 							="T",
		tw_henschel 							="Q",
		
	-- Barrack Abilities
	tw_infantry_support 							="U",
	tw_stealth_infantry_support 						="Y",
		
	-- Allies
	
	-- M18 Hellcat
	tw_armor_piercing_shell							="P",
	tw_observational_status 						="O",
	tw_ambush								="C",
	tw_flank_speed 								="F",
	tw_hawkins_mine 							="W",
	
	-- M4 Sherman
	tw_long_range_shell 							="L",
	tw_fire_smoke_shell 							="S",
	tw_mine_clearing 							="C",

	-- Churchill
	tw_group_field_repairs 							="G",
	tw_hull_down 								="W",
	tw_heroic_charge 							="E",
	tw_tread_breaker 							="R",
	
	-- Axis
	
	-- Hotchkiss
	tw_stun_shot 								="N",
	tw_mark_target 								="K",
	tw_salvage 								="S",
	tw_stuka_rocket_barrage 						="B",
	tw_hotchkiss_mine 							="M",
	tw_camouflage 								="C",
	
	-- Panzer IV
	tw_triple_shot 								="L",
	tw_rapid_fire 								="R",
	tw_overdrive 								="O",
	tw_self_repair 								="E",
	
	-- Panther
	tw_sight_main_gun 							="M",
	tw_blitzkrieg 								="Z",
	tw_precisioni_artillery 						="L",
	tw_white_phosphorus_shell 						="W",
	
--Domination
	
	dom_ally_fireup = "F",
	dom_allies_upgrade_flamethrower						="F",
	dom_axis_upgrade_flamethrower						="F",
	dom_heroic_charge							="C",
	dom_medical_kit								="K",
	dom_rocket_ambush							="R",
	dom_throw_sticky_bomb							="S",
	dom_fire_panzerfaust							="P",
	dom_builder_spawn							="B",
	dom_soldier_spawn							="S",
	dom_rocket_spawn							="R",
	dom_scout_spawn								="C",
	dom_sharpshooter_spawn							="H",
	dom_pathfinder_spawn							="P",
	dom_demolisher_spawn							="E",
	dom_dislodger_spawn							="D",
	dom_machine_gunner_spawn						="G",
	dom_medic_spawn								="M",

	pe_offensive_1								="O",
	pe_offensive_2								="O",
	pe_offensive_3								="O",
	
	----------------------------------------------------
	---------------- DLC1 Villers-Bocage ---------------
	----------------------------------------------------

	villers_bocage_he							="E",
	villers_bocage_tank_shock						="T",
	villers_bocage_smoke							="S",
	villers_bocage_defense							="M",
	
	villers_bocage_direct_control						="D",
	villers_bocage_toggle_ammo						="R",
	villers_bocage_toggle_commander						="C",
	villers_bocage_arty_barrage						="B",
	villers_bocage_hide							="E",
	villers_bocage_drop_weapon						="W",
	villers_bocage_mark_artillery						="M",
	villers_bocage_med_kit							="D",
	
	-------------------------------------------------
	---------------DLC2 La Fiere----------------------
	------------------------------------------------
	la_fiere_bundled_grenade2                   			   	="R",
	
	-------------------------------------------------
	---------------DLC2 La Fiere----------------------
	------------------------------------------------
	axis_stormtrooperTrun							="F",
	axis_tellermineTrun							="E",
	
	-------------------------------------------------
	---------------DLC3 Falaise Pocket----------------------
	------------------------------------------------
	axis_boobytrap_strategicpoint_trun					="P",
	
	
	
	
}






