----------------------------------------------------------------------------------
-- Speech Tuning Values
-- (c) 2006 Relic Entertainment
--
-- Randy Lukashuk
----------------------------------------------------------------------------------

----------------------------------------------------------------------------------
-- Global Tuning
----------------------------------------------------------------------------------

-- you will get an in combat (loud) read code for this much time after combat (in seconds)
speech_in_combat_time = 2

-- once your health reaches this point, you will get an intense read code (percentage 0-1)
speech_intense_health_percentage = 0.42

-- percentage of intense mood falling back to tense
speech_intense_fallback_percentage = 0.50

-- the distance around your units to check for incoming artillery strikes  (meters)
speech_artillery_warning_dist = 50.0

-- if the target distance is above this amount, it will use the "F" code for Far. (meters)
-- otherwise, it will use default of "0"
speech_target_distance_close = 160.0 

-- Determines the score of the 'b' target race code. (?????what is this unit of measure?????)
-- Other race codes scores a value of 1.
speech_target_race_code_both = 10;

-- consecutive battle chatter events will never be spawned by the same speaker.
-- this is the number of recent speakers to cache.  for example, if you set
-- this value to 3, and an entity spawns battle chatter, that same entitiy will
-- not be able to spawn more battle chatter until 2 other entities speak and he
-- is out of the cache.
speech_max_battle_chatter_speakers = 4

-- root folder for speech system
speech_path = [[sound/speech/mp]]
speech_path_sp = [[sound/speech/sp]]

-- combat zone tuning

-- the min radius is the radius combat zones start with, each time a unit within the zone
-- takes damage, the radius is increased by inc_per_attack, until max_radius is reached (in meters)
speech_combatzone_min_radius = 20.0
speech_combatzone_max_radius = 55.0
speech_combatzone_inc_per_attack = 0.075

-- each time a unit in a zone takes damage, the lifetime of the zone is reset to this amount (in seconds)
speech_combatzone_lifetime_secs = 8.0

-- this is the difference between the inner and outer radii. (?????what is the unit of measure?????)
-- if a unit is hit within the inner radii, it will reset the zones lifetime and increase its size.
-- if a unit is hit within the outer radii but not the inner, it will create a new zone.
-- this creates some overlap which is more realistic.
speech_combatzone_new_zone_threshold = 0.80

-- squad elements will not play their plan wait speech if the wait time is less than this threshold (seconds)
speech_plan_wait_time_threshold = 0.2

-- squad elements will not play their plan move speech if the distance is less than this threshold (meters)
speech_plan_move_dist_threshold = 15.0

-- how much time must pass before we stop using the low verbosity (seconds)
speech_low_verb_time = 3.0

-- how much time must pass before we stop using the med verbosity (seconds)
speech_med_verb_time = 6.0

-- max amount of time, in seconds, entries will stay in the speech queue before playing(this should be a fairly low value)(seconds)
speech_queue_entry_lifetime = 2.0

-- number of times you need to select a squad before they get annoyed
speech_select_annoyed_count = 7.0
speech_select_annoyed_time = 3.0

-- use stealth speech when the sunlight brightness is below a certain threshold. 0 is total darkness, 1 is full brightness
speech_stealth_sunlight_threshold = 0.4

-- specifies the size of the speech cache used to store the most commonly used containers so that the RandomPlayList setting can work
speech_cache_size = 100

----------------------------------------------------------------------------------
-- Event Frequency Tuning
----------------------------------------------------------------------------------
-- default tuning. If an event is not found in the character specific tuning, this is used as a fallback.
event_tuning_default = 
{
		-- ORDER CONDFIRMATIONS
		-- (uses priority 1-20)
	{ evt = "sel", specific = true, specific_percentage = 1.0, play_in_tacmap = true, priority = 1, min_freq = 1.0, low_verb = 30, med_verb = 60, ack_verb = 0 },	-- select
	{ evt = "sla", specific = true, specific_percentage = 1.0, play_in_tacmap = true, priority = 1, min_freq = 1.0, low_verb = speech_low_verb_time, med_verb = speech_med_verb_time, ack_verb = 0 },	-- select annoyed
	{ evt = "mov", specific = true, specific_percentage = 1.0, play_in_tacmap = true, priority = 1, min_freq = 1.0, low_verb = 15, med_verb = 45, ack_verb = 0 },	-- move
	{ evt = "hal", specific = true, specific_percentage = 1.0, play_in_tacmap = true, priority = 1, min_freq = 1.0, low_verb = speech_low_verb_time, med_verb = speech_med_verb_time, ack_verb = 0 },	-- halt
	{ evt = "pwp", specific = true, specific_percentage = 1.0, play_in_tacmap = true, priority = 1, min_freq = 1.0, low_verb = speech_low_verb_time, med_verb = speech_med_verb_time, ack_verb = 0 },	-- pick up weapon
	{ evt = "dpw", specific = true, specific_percentage = 1.0, play_in_tacmap = true, priority = 1, min_freq = 1.0, low_verb = speech_low_verb_time, med_verb = speech_med_verb_time, ack_verb = 0 },	-- drop weapon
	{ evt = "mcw", specific = true, specific_percentage = 1.0, play_in_tacmap = true, priority = 1, min_freq = 1.0, low_verb = 80, med_verb = 150, ack_verb = 0 },	-- man crewed weapon
	{ evt = "lod", specific = true, specific_percentage = 1.0, play_in_tacmap = true, priority = 1, min_freq = 1.0, low_verb = 80, med_verb = 150, ack_verb = 0 },	-- load
	{ evt = "unl", specific = true, specific_percentage = 1.0, play_in_tacmap = true, priority = 1, min_freq = 1.0, low_verb = 80, med_verb = 150, ack_verb = 0 },	-- unload
	{ evt = "atk", specific = true, specific_percentage = 1.0, play_in_tacmap = true, priority = 1, min_freq = 1.0, low_verb = 15, med_verb = 35, ack_verb = 0 },	-- attack
	{ evt = "asl", specific = true, specific_percentage = 1.0, play_in_tacmap = true, priority = 1, min_freq = 1.0, low_verb = speech_low_verb_time, med_verb = speech_med_verb_time, ack_verb = 0 },	-- assault
	{ evt = "ret", specific = true, specific_percentage = 1.0, play_in_tacmap = true, priority = 1, min_freq = 1.0, low_verb = 40, med_verb = 60, ack_verb = 0 },	-- retreat
	{ evt = "atm", specific = true, specific_percentage = 1.0, play_in_tacmap = true, priority = 1, min_freq = 1.0, low_verb = 20, med_verb = 50, ack_verb = 0 },	-- attack move
	{ evt = "bld", specific = true, specific_percentage = 1.0, play_in_tacmap = true, priority = 1, min_freq = 1.0, low_verb = speech_low_verb_time, med_verb = speech_med_verb_time, ack_verb = 0 },	-- build structure
	{ evt = "upg", specific = true, specific_percentage = 1.0, play_in_tacmap = true, priority = 1, min_freq = 1.0, low_verb = 50, med_verb = 200, ack_verb = 0 },	-- upgrade
	{ evt = "cap", specific = true, specific_percentage = 1.0, play_in_tacmap = true, priority = 1, min_freq = 1.0, low_verb = 15, med_verb = 40, ack_verb = 0 },	-- capture
	{ evt = "abt", specific = true, specific_percentage = 1.0, play_in_tacmap = true, priority = 1, min_freq = 1.0, low_verb = speech_low_verb_time, med_verb = speech_med_verb_time, ack_verb = 0 },	-- ability
	{ evt = "ack", specific = true, specific_percentage = 1.0, play_in_tacmap = true, priority = 1, min_freq = 1.0, low_verb = 1, med_verb = 2 },	-- acknowledgement
	
	-- INTEL EVENTS
		-- (uses priority 11-20)
	{ evt = "ssa", specific = false, specific_percentage = 1.0, play_in_tacmap = true, priority = 11, min_freq = 10.0 }, -- sector attacked
	{ evt = "sos", specific = false, specific_percentage = 1.0, play_in_tacmap = true, priority = 11, min_freq = 1.0 }, -- sector out of supply
	{ evt = "lsp", specific = false, specific_percentage = 1.0, play_in_tacmap = true, priority = 11, min_freq = 10.0 }, -- losing point
	{ evt = "ems", specific = false, specific_percentage = 1.0, play_in_tacmap = true, priority = 12, min_freq = 90.0 }, -- enemy in sector
	{ evt = "fnd", specific = false, specific_percentage = 1.0, play_in_tacmap = true, priority = 11, min_freq = 40.0 }, -- friendly destroyed
	{ evt = "end", specific = false, specific_percentage = 1.0, play_in_tacmap = true, priority = 13, min_freq = 25.0 }, -- enemy destroyed
	{ evt = "apl", specific = false, specific_percentage = 1.0, play_in_tacmap = true, priority = 11, min_freq = 1.0 }, -- player ability
	{ evt = "par", specific = false, specific_percentage = 1.0, play_in_tacmap = true, priority = 11, min_freq = 1.0 }, -- player ability ready
	{ evt = "buc", specific = false, specific_percentage = 1.0, play_in_tacmap = true, priority = 13, min_freq = 1.0 }, -- building upgrade complete (for buildings only)
	{ evt = "hqa", specific = false, specific_percentage = 1.0, play_in_tacmap = true, priority = 12, min_freq = 30.0 }, -- hq attacked (buildings in control radius)
	{ evt = "hqd", specific = false, specific_percentage = 1.0, play_in_tacmap = true, priority = 12, min_freq = 30.0 }, -- hq destroyed (buildings in control radius)
	{ evt = "fba", specific = false, specific_percentage = 1.0, play_in_tacmap = true, priority = 12, min_freq = 30.0 }, -- forward base attacked (buildings outside of control radius)
	{ evt = "fbd", specific = false, specific_percentage = 1.0, play_in_tacmap = true, priority = 12, min_freq = 30.0 }, -- forward base destroyed (buildings ouside of control radius)
	{ evt = "aqa", specific = false, specific_percentage = 1.0, play_in_tacmap = true, priority = 13, min_freq = 30.0 }, -- allied hq attacked (buildings inside allies control radius)
	{ evt = "aqd", specific = false, specific_percentage = 1.0, play_in_tacmap = true, priority = 13, min_freq = 30.0 }, -- allied hq destroyed (buildings inside allies control radius)
	{ evt = "vst", specific = false, specific_percentage = 1.0, play_in_tacmap = true, priority = 11, min_freq = 30.0 }, -- victory status
	{ evt = "rei", specific = false, specific_percentage = 1.0, play_in_tacmap = true, priority = 11, min_freq = 2.0 },  -- reinforce issued
	{ evt = "dbu", specific = false, specific_percentage = 1.0, play_in_tacmap = true, priority = 11, min_freq = 2.0 },  -- enemy building upgrade complete (for buildings only)
	
		-- SPEECH EVENTS
		-- (uses priority 21-30)
	{ evt = "kil", specific = true, specific_percentage = 0.5, play_in_tacmap = true, priority = 22, min_freq = 6.0, low_verb = speech_low_verb_time, med_verb = speech_med_verb_time },	-- killed
	{ evt = "ufw", specific = true, specific_percentage = 0.5, play_in_tacmap = true, priority = 21, min_freq = 30.0, low_verb = speech_low_verb_time, med_verb = speech_med_verb_time },	-- under fire
	{ evt = "pin", specific = true, specific_percentage = 0.5, play_in_tacmap = false, priority = 22, min_freq = 10.0, low_verb = speech_low_verb_time, med_verb = speech_med_verb_time },	-- pinned
	{ evt = "cpc", specific = true, specific_percentage = 0.5, play_in_tacmap = true, priority = 22, min_freq = 5.0, low_verb = speech_low_verb_time, med_verb = speech_med_verb_time },	-- capture complete
	{ evt = "lmd", specific = true, specific_percentage = 0.5, play_in_tacmap = true, priority = 22, min_freq = 20.0, low_verb = speech_low_verb_time, med_verb = speech_med_verb_time },	-- landmine damage
	{ evt = "lmw", specific = true, specific_percentage = 0.5, play_in_tacmap = true, priority = 22,  min_freq = 20.0, low_verb = speech_low_verb_time, med_verb = speech_med_verb_time },	-- landmine detect
	{ evt = "wrn", specific = true, specific_percentage = 0.5, play_in_tacmap = true, priority = 22, min_freq = 10.0, low_verb = speech_low_verb_time, med_verb = speech_med_verb_time },	-- warning
	{ evt = "unc", specific = true, specific_percentage = 1.0, play_in_tacmap = true, priority = 22, min_freq = 10.0, low_verb = speech_low_verb_time, med_verb = speech_med_verb_time },	-- unit complete
	{ evt = "upc", specific = true, specific_percentage = 0.5, play_in_tacmap = true, priority = 22, min_freq = 10.0, low_verb = speech_low_verb_time, med_verb = speech_med_verb_time },	-- upgrade complete (for squads only)
	{ evt = "bdc", specific = true, specific_percentage = 0.5, play_in_tacmap = true, priority = 22, min_freq = 10.0, low_verb = speech_low_verb_time, med_verb = speech_med_verb_time },	-- build complete
	{ evt = "vet", specific = true, specific_percentage = 0.5, play_in_tacmap = true, priority = 21, min_freq = 10.0, low_verb = speech_low_verb_time, med_verb = speech_med_verb_time },	-- veterency
	{ evt = "ric", specific = true, specific_percentage = 0.5, play_in_tacmap = false, priority = 22, min_freq = 15.0, low_verb = speech_low_verb_time, med_verb = speech_med_verb_time },	-- reinforcement complete
	{ evt = "vhd", specific = true, specific_percentage = 0.5, play_in_tacmap = true, priority = 22, min_freq = 1.0, low_verb = speech_low_verb_time, med_verb = speech_med_verb_time },	-- critical vehicle damage
	{ evt = "mor", specific = true, specific_percentage = 0.5, play_in_tacmap = false, priority = 22, min_freq = 10.0, low_verb = speech_low_verb_time, med_verb = speech_med_verb_time },	-- morale restored (no longer suppresed)
	{ evt = "abc", specific = true, specific_percentage = 1.0, play_in_tacmap = true, priority = 22, min_freq = 15.0, low_verb = 30, med_verb = 45 },	-- ability complete
	{ evt = "tgd", specific = true, specific_percentage = 0.5, play_in_tacmap = false, priority = 22, min_freq = 10.0, low_verb = 70, med_verb = 120 },	-- target destroyed
	{ evt = "pwc", specific = true, specific_percentage = 0.5, play_in_tacmap = true, priority = 22, min_freq = 10.0, low_verb = speech_low_verb_time, med_verb = speech_med_verb_time },	-- pickup weapon complete
	{ evt = "cnc", specific = true, specific_percentage = 0.5, play_in_tacmap = true, priority = 22, min_freq = 10.0, low_verb = speech_low_verb_time, med_verb = speech_med_verb_time },	-- cannot move/comply
	{ evt = "rec", specific = true, specific_percentage = 0.5, play_in_tacmap = true, priority = 22, min_freq = 10.0, low_verb = speech_low_verb_time, med_verb = speech_med_verb_time },	-- rebuilt entity created (repair wreck finished)
	{ evt = "dun", specific = true, specific_percentage = 1.0, play_in_tacmap = true, priority = 22, min_freq = 10.0, low_verb = speech_low_verb_time, med_verb = speech_med_verb_time },	-- enemy unit complete
	{ evt = "dup", specific = true, specific_percentage = 1.0, play_in_tacmap = true, priority = 22, min_freq = 10.0, low_verb = speech_low_verb_time, med_verb = speech_med_verb_time },	-- enemy upgrade complete (for squads only)
	{ evt = "dbd", specific = true, specific_percentage = 1.0, play_in_tacmap = true, priority = 22, min_freq = 10.0, low_verb = speech_low_verb_time, med_verb = speech_med_verb_time },	-- enemy build complete

		-- BATTLE CHATTER (specific is not used for chatter because it's triggered on single entities)
		-- (uses priority 31-40)
	{ evt = "buf", specific = true, priority = 33, specific_percentage = 0.5, play_in_tacmap = false, min_freq = 1.0, low_verb = speech_low_verb_time, med_verb = speech_med_verb_time },	-- under fire
	{ evt = "bat", specific = true, priority = 32, specific_percentage = 0.5, play_in_tacmap = false, min_freq = 1.0, low_verb = speech_low_verb_time, med_verb = speech_med_verb_time },	-- attacking
	{ evt = "bdl", specific = true, priority = 31, specific_percentage = 0.5, play_in_tacmap = false, min_freq = 10.0, low_verb = speech_low_verb_time, med_verb = speech_med_verb_time },	-- idle
	{ evt = "bpl", specific = true, priority = 35, specific_percentage = 0.5, play_in_tacmap = false, min_freq = 10.0, low_verb = speech_low_verb_time, med_verb = speech_med_verb_time },	-- plan
	{ evt = "brs", specific = true, priority = 34, specific_percentage = 0.5, play_in_tacmap = false, min_freq = 10.0, low_verb = speech_low_verb_time, med_verb = speech_med_verb_time },	-- rumour
	{ evt = "cas", specific = true, priority = 34, specific_percentage = 0.5, play_in_tacmap = false, min_freq = 4.0, low_verb = speech_low_verb_time, med_verb = speech_med_verb_time },	-- casualty (critical damage)
	{ evt = "bfd", specific = true, priority = 34, specific_percentage = 0.5, play_in_tacmap = false, min_freq = 10.0, low_verb = speech_low_verb_time, med_verb = speech_med_verb_time },	-- flank killed
	{ evt = "bls", specific = true, priority = 34, specific_percentage = 0.5, play_in_tacmap = false, min_freq = 10.0, low_verb = speech_low_verb_time, med_verb = speech_med_verb_time },	-- line of sight move
	{ evt = "bap", specific = true, priority = 34, specific_percentage = 0.5, play_in_tacmap = false, min_freq = 10.0, low_verb = speech_low_verb_time, med_verb = speech_med_verb_time },	-- attention target changed
	{ evt = "bvi", specific = true, priority = 34, specific_percentage = 0.5, play_in_tacmap = false, min_freq = 10.0, low_verb = speech_low_verb_time, med_verb = speech_med_verb_time },	-- vehicle rude (vehicle pushes infantry out of the way)
	{ evt = "bip", specific = true, priority = 34, specific_percentage = 0.5, play_in_tacmap = false, min_freq = 10.0, low_verb = speech_low_verb_time, med_verb = speech_med_verb_time },	-- infantry pushed (by vehicle)
	
}

-- character specific tuning.
event_tuning = 
{
	characters = 
	{
		{
			character = "en",
			{ evt = "sel", specific = true, specific_percentage = 1.0, play_in_tacmap = true, priority = 1, min_freq = 2.0, low_verb = 15, med_verb = 60, ack_verb = 0 },	-- select
			{ evt = "mov", specific = true, specific_percentage = 1.0, play_in_tacmap = true, priority = 2, min_freq = 1.0, low_verb = speech_low_verb_time, med_verb = speech_med_verb_time, ack_verb = 0 },	-- attack
			{ evt = "bpl", specific = false, specific_percentage = 0.5, priority = 35, specific_percentage = 0.5, play_in_tacmap = false, min_freq = 15.0, low_verb = speech_low_verb_time, med_verb = speech_med_verb_time },	-- plan
		},
		{
			character = "sn",
			{ evt = "sel", specific = true, specific_percentage = 1.0, play_in_tacmap = true, priority = 1, min_freq = 1.0, low_verb = speech_low_verb_time, med_verb = speech_med_verb_time, ack_verb = 0 },	-- select
			{ evt = "cap", specific = true, specific_percentage = 1.0, play_in_tacmap = true, priority = 1, min_freq = 3.0, low_verb = speech_low_verb_time, med_verb = speech_med_verb_time, ack_verb = 0 },	-- capture
		},
		{	
			character = "xs",
			{ evt = "ufw", specific = false, specific_percentage = 0.5, play_in_tacmap = true, priority = 6, min_freq = 30.0, low_verb = 35, med_verb = 80 },	-- under fire
		},
		{	
			character = "pn",
			{ evt = "ufw", specific = false, specific_percentage = 0.5, play_in_tacmap = true, priority = 6, min_freq = 16.0, low_verb = 35, med_verb = 80 },	-- under fire
		},
		{	
			character = "at",
			{ evt = "ufw", specific = false, specific_percentage = 0.5, play_in_tacmap = true, priority = 6, min_freq = 4.0, low_verb = 35, med_verb = 80 },	-- under fire
		},
		{	
			character = "bl",
			{ evt = "sel", specific = false, specific_percentage = 1.0, play_in_tacmap = true, priority = 6, min_freq = 2.0, low_verb = 35, med_verb = 80, ack_verb = 0 },
		},
		{
			character = "st",
			{ evt = "abt", specific = true, specific_percentage = 1.0, play_in_tacmap = true, priority = 1, min_freq = 2.0, low_verb = 15, med_verb = 60, ack_verb = 0 },	-- ability
		},
		{
			character = "tg",
			{ evt = "atk", specific = true, specific_percentage = 1.0, play_in_tacmap = true, priority = 1, min_freq = 4.0, low_verb = 5, med_verb = 15, ack_verb = 0 },	-- attack
			{ evt = "sel", specific = true, specific_percentage = 1.0, play_in_tacmap = true, priority = 1, min_freq = 3.0, low_verb = 5, med_verb = 15, ack_verb = 0 },	-- select
			{ evt = "bap", specific = true, specific_percentage = 1.0, play_in_tacmap = true, priority = 1, min_freq = 3.0, low_verb = 5, med_verb = 15, ack_verb = 0 },	-- attention point
		},
	},	
}

----------------------------------------------------------------------------------
-- Battle Chatter Tuning
----------------------------------------------------------------------------------
battle_chatter_tuning =
{
	-- min_freq = { low, high }
		-- the frequency of this battle chatter event is a random amount of seconds between low and high
	-- chance
		-- once the frequency has passed, this is the chance of the battle chatter event being spawned,
		-- if chance fails then the frequency timer is reset.
	{ evt = BCT_UnderFire, 			chance = 0.35, 	min_freq = { 20.0, 30.0 } },
	{ evt = BCT_Attacking, 			chance = 0.55, 	min_freq = { 8.0, 12.0 } },
	{ evt = BCT_Plan, 			chance = 0.75, 	min_freq = { 4.5, 8.5 } },
	{ evt = BCT_Idle, 			chance = 0.50, 	min_freq = { 25.0, 45.0 } },
	{ evt = BCT_Casualty, 			chance = 0.75, 	min_freq = { 3.0, 5.0 } },
	{ evt = BCT_FlankKilled, 		chance = 1.0, 	min_freq = { 3.0, 5.0 } },
	{ evt = BCT_LOSMove, 			chance = 0.75, 	min_freq = { 3.0, 5.0 } },
	{ evt = BCT_EAC, 			chance = 0.85, 	min_freq = { 3.0, 5.0 } },
	{ evt = BCT_AttentionPoint, 		chance = 0.80, 	min_freq = { 15.0, 25.0 } },
	{ evt = BCT_VehiclePush, 		chance = 0.55, 	min_freq = { 3.0, 5.0 } },
	{ evt = BCT_InfantryPushed, 		chance = 0.55, 	min_freq = { 3.0, 5.0 } },

}

----------------------------------------------------------------------------------
-- Character Tuning
----------------------------------------------------------------------------------
characters =
{
	allies = 
	{
		{ "en1", { CAT_OC, CAT_EV, CAT_BC }     },		-- Engineer Sgt

		{ "rs4", { CAT_OC, CAT_EV, CAT_BC }	},		-- Rifle Sergeant
		
		{ "ps1", { CAT_OC, CAT_EV, CAT_BC }	},		-- Paratrooper Sergeant 

		{ "rg1", { CAT_OC, CAT_EV, CAT_BC }	},		-- Ranger Sergeant 

		{ "HCT", { CAT_OC, CAT_EV }	},		        -- Hellcat
					
		{ "hs1", { CAT_OC, CAT_EV, CAT_BC }	},		-- Heavy MG Crew Sgt

		{ "ms1", { CAT_OC, CAT_EV, CAT_BC }	},		-- Mortar Crew Sgt	
		
		{ "sni", { CAT_OC, CAT_EV }	},		        -- sniper
		
		{ "tnk", { CAT_OC, CAT_EV, CAT_BC }	},		-- tanks
		
		{ "veh", { CAT_OC, CAT_EV, CAT_BC }	},		-- light vehicles

		{ "at1", { CAT_OC, CAT_EV, CAT_BC }	},		-- AT gun

		{ "fg2", { CAT_OC, CAT_EV, CAT_BC }	},		-- Field gun (105 Howitzer/88 etc.)
	
		{ "gs1", { CAT_OC, CAT_EV, CAT_BC }	},		-- generic soldiers (some generic soldiers can only use battle chatter)

			
		{ "int", { CAT_IE } },					-- intel officer

		{ "bld", { CAT_OC } },					-- building select

		{ "SGA", { CAT_OC, CAT_EV }	},		        -- Staghound light vehicle Allied

		{ "abl", { CAT_OC, CAT_EV }	},			-- DLC2 Able squad

		{ "bkr", { CAT_OC, CAT_EV }	},			-- DLC2 Baker squad

		{ "cft", { CAT_OC, CAT_EV }	},			-- DLC2 Craft solo

		{ "air", { CAT_OC, CAT_EV, CAT_BC }	},		-- DLC2 Generic Paratrooper 

		{ "chh", { CAT_OC, CAT_EV }	},			-- Churchill Tank Wars

		{ "Med", { CAT_OC, CAT_EV, CAT_BC }	},		-- Allied Medic

		{ "Ofc", { CAT_OC, CAT_EV, CAT_BC }	},		-- Officer
	},
	
	axis =
	{		
		{ "pn3", { CAT_OC, CAT_EV, CAT_BC }	},		-- pioneers
		
		{ "at1", { CAT_OC, CAT_EV, CAT_BC }	},		-- AT gun

		{ "fg1", { CAT_OC, CAT_EV, CAT_BC }	},		-- Field gun (105 Howitzer/88 etc.)

		{ "HGs", { CAT_OC, CAT_EV, CAT_BC }	},		-- Hotchkiss/Geschutzwagen
		
		{ "hs1", { CAT_OC, CAT_EV, CAT_BC }	},		-- Heavy MG Crew Sgt

		{ "ms1", { CAT_OC, CAT_EV, CAT_BC }	},		-- Mortar Crew Sgt
		
		{ "xfc", { CAT_OC, CAT_EV, CAT_BC }	},		-- axis officer
		
		{ "wm1", { CAT_OC, CAT_EV }	},			-- werhmact
		
		{ "snx", { CAT_OC, CAT_EV }	},		        -- sniper
		
		{ "vg1", { CAT_OC, CAT_EV, CAT_BC }	},		-- volksgrenadier
		
		{ "kh1", { CAT_OC, CAT_EV, CAT_BC }	},		-- knights cross holder
		
		{ "st1", { CAT_OC, CAT_EV, CAT_BC }	},		-- stromtrooper

		{ "Lf2", { CAT_OC, CAT_EV }	},			-- Luftwaffe (Falaise Pocket)
		
		{ "lvh", { CAT_OC, CAT_EV, CAT_BC }	},		-- light vehicle
		
		{ "mtk", { CAT_OC, CAT_EV, CAT_BC }	},		-- medium tank
		
		{ "htk", { CAT_OC, CAT_EV, CAT_BC }	},		-- heavy tank
		
		{ "xs1", { CAT_OC, CAT_EV, CAT_BC }	},		-- generic soldiers (some can only use battle chatter)
	
		{ "gan", { CAT_IE, CAT_EV } },				-- german announcer (intel officer)

		{ "bld", { CAT_OC } },					-- building select

		{ "SWG", { CAT_OC, CAT_EV, CAT_BC } },			-- Schwimmwagen
		
		{ "tgr", { CAT_OC, CAT_EV, CAT_BC } },			-- special tiger tank

		{ "t1c", { CAT_OC, CAT_EV, CAT_BC } },			-- special tiger squad 1

		{ "tsg", { CAT_OC, CAT_EV, CAT_BC } },			-- special tiger squad 2

		{ "isc", { CAT_OC, CAT_EV, CAT_BC } },			-- DLC Infantry Voss

		{ "iro", { CAT_OC, CAT_EV, CAT_BC } },			-- DLC Infantry Berndt

		{ "lzk", { CAT_OC, CAT_EV, CAT_BC } },			-- DLC Infantry Litzke

		{ "sfd", { CAT_OC, CAT_EV, CAT_BC } },			-- DLC Infantry Schroif

		{ "szg", { CAT_OC, CAT_EV, CAT_BC } },			-- DLC Infantry Schultz

		{ "Med", { CAT_OC, CAT_EV, CAT_BC } },	        	-- Axis Medic
	},
	
	allies_commonwealth =
	{		

		
	

		{ "AHQ", { CAT_OC, CAT_EV }	},			-- Armour Vehicles (HQ Barracks MP…)

		{ "at1", { CAT_OC, CAT_EV }	},			-- AT gun
		
		{ "bcr", { CAT_OC, CAT_EV }	},			-- Bren Carrier
		
		{ "bof", { CAT_OC, CAT_EV }	},			-- Bofors
		
		{ "chh", { CAT_OC, CAT_EV }	},			-- Churchill/Churchill AVRE
		
		{ "cmd", { CAT_OC, CAT_EV }	},			-- commando
		
		{ "cpt", { CAT_OC, CAT_EV }	},			-- captain
		
		{ "ctk", { CAT_OC, CAT_EV }	},			-- Command Tank
		
		{ "cQH", { CAT_OC, CAT_EV }	},			-- Command Vehicles (HQ Barracks MP…)
		
		{ "fdg", { CAT_OC, CAT_EV }	},			-- Field gun (105 Howitzer/88 etc.)
		
		{ "hs1", { CAT_OC, CAT_EV, CAT_BC }	},		-- Heavy MG Crew Sgt
			
		{ "htk", { CAT_OC, CAT_EV }	},			-- Cromwell/Sherman Firefly

		{ "IHQ", { CAT_OC, CAT_EV }	},			-- Infantry Vehicles (HQ Barracks MP…)

		{ "KAN", { CAT_OC, CAT_EV, CAT_BC }	},		-- Kangaroo
		
		{ "ltn", { CAT_OC, CAT_EV }	},			-- lieutenant
		
		{ "ms1", { CAT_OC, CAT_EV, CAT_BC }	},		-- Mortar Crew Sgt
		
		{ "mtk", { CAT_OC, CAT_EV }	},			-- Stuart/Priest/Tetrarch
		
		{ "veh", { CAT_OC, CAT_EV}	},			-- Staghound
		
		{ "pst", { CAT_OC, CAT_EV }	},			-- priest
		
		{ "sp1", { CAT_OC, CAT_EV }	},			-- sappers

		{ "SGB", { CAT_OC, CAT_EV, CAT_BC }	},		-- Staghound light vehicle British
			
		{ "Tm2", { CAT_OC, CAT_EV }	},			-- Tommies
			
		{ "Tcd", { CAT_OC, CAT_EV }	},			-- Tommies Canadian	


			
		{ "gs1", { CAT_EV, CAT_BC }	},			-- generic soldiers (some can only use battle chatter)
		
		{ "gs2", { CAT_EV, CAT_BC }	},			-- generic soldiers (some can only use battle chatter)
			
		{ "int", { CAT_IE, CAT_EV } },				-- VoG
		
		{ "bld", { CAT_OC } },					-- building select
	},

	
	axis_panzer_elite =
	{		
		


		
		{ "AT1", { CAT_OC, CAT_EV}	},			-- Anti-Tank
					
		{ "BTg", { CAT_OC, CAT_EV }	},			-- Bergetiger
		
		{ "Fsj", { CAT_OC, CAT_EV }	},			-- Fallschirmjager
		
		{ "FdG", { CAT_OC, CAT_EV }	},			-- Flak 88
		
		{ "Hs1", { CAT_OC, CAT_EV }	},			-- Heavy MG Crew; Flak 38
		
		{ "HPG", { CAT_OC, CAT_EV }	},			-- Heavy Panzer Grenadiers

		{ "st1", { CAT_OC, CAT_EV, CAT_BC }	},		-- stromtrooper
		
		{ "HTk", { CAT_OC, CAT_EV }	},			-- Heavy Tank (Panther, Hummel, Jagdpanther)
		
		{ "Lf2", { CAT_OC, CAT_EV }	},			-- Luftwaffe

		{ "LV2", { CAT_OC, CAT_EV }	},			-- 221,222,223

		{ "Hft", { CAT_OC, CAT_EV }	},			-- 250 (/*) + 251 (/**)

		{ "HGs", { CAT_OC, CAT_EV, CAT_BC }	},		-- Hotchkiss/Geschutzwagen
		
		{ "MHT", { CAT_OC, CAT_EV }	},			-- Moto-Halftrack: Kettenrad
		
		{ "Ms1", { CAT_OC, CAT_EV }	},			-- Mortar Team
		
		{ "MTk", { CAT_OC, CAT_EV }	},			-- Medium Tank (Marder III, Panzer, Hetzer)
		
		{ "HWp", { CAT_OC, CAT_EV }	},			-- Panzer Elite FdG Capture Squad
		
		{ "Ptr", { CAT_OC, CAT_EV }	},			-- Panther
		
		{ "Pz2", { CAT_OC, CAT_EV }	},			-- Panzer Elite Grenadiers

		{ "SWG", { CAT_OC, CAT_EV, CAT_BC }	},		-- Schwimmwagen
		
		{ "Wbw", { CAT_OC, CAT_EV }	},			-- Wirblewind
		
		{ "xs1", { CAT_EV, CAT_BC }	},			-- generic soldiers (some can only use battle chatter)

		{ "gan", { CAT_IE, CAT_EV } },				-- german announcer (intel officer)

		{ "bld", { CAT_OC } },					-- building select
		
	},
}

