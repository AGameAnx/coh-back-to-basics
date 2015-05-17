---------------------------------------------------------------------
-- File    : physics_globals.lua
-- Desc    : 
-- Created : Friday, July 16, 2004
-- Author  : 
-- 
-- (c) 2004 Relic Entertainment Inc.
-- 

-- global physics parameters

-- contact manager values

minImpactNormVelocity = 0.1 		--  minimum impulse normal to point of contact before we trigger an impact
impactTimeout = 0.33				-- an impact expires after x seconds after which we can trigger another one
maxNumImpacts = 4					-- the maximum number of impacts per timeout period

minScrapeTangentVelocity = 4.25		-- minimum velocity tangent to contact normal before a contact is considered a scrape
maxScrapeInactiveTimer = 0.5		-- x seconds of inactivity before a scrape stops
minScrapeStartTimer = 0.0667		-- x seconds of stable scrape signal before we trigger a scrape
maxScrapeStaleContactInfo = 0.0667	-- x seconds before scrape contact info is considered stale (CAUTION: tricky value to tune)
maxNumScrapes = 4					-- sames as m_maxNumImpacts but for scrapes

-- world values
gravityVector =
{
	0,
	-12.8,
	0,
}
maxWorldSize = 1100
SystemSpecs =
{
	NoPhysicsSpec =
	{
		numAllowedOrphans = 0,
		numAllowedOrphansAlt1 = 0,
		numAllowedPhyFX = 0,
		numAllowedPhantoms = 0,
		desiredStepFrequency = 20, -- Hz
	}, 
	
	MinSpec =
	{
		numAllowedOrphans = 50,
		numAllowedOrphansAlt1 = 14,
		numAllowedPhyFX = 50,
		numAllowedPhantoms = 50,
		desiredStepFrequency = 30, -- Hz
	}, 
	
	MidSpec =
	{
		numAllowedOrphans = 100,
		numAllowedOrphansAlt1 = 30,
		numAllowedPhyFX = 100,
		numAllowedPhantoms = 100,
		desiredStepFrequency = 30, -- Hz
	}, 
	
	HighSpec =
	{
		numAllowedOrphans = 150,
		numAllowedOrphansAlt1 = 50,
		numAllowedPhyFX = 150,
		numAllowedPhantoms = 100,
		desiredStepFrequency = 60, -- Hz
	}, 
}

-- terrain material properties
terrainMaterials = 
{
	{
		name = "<default>",
		restitution = 0.1,
		friction = 0.85,
	},
	
	{
		name = "grass",
		restitution = .1,
		friction = .925,
	},
	
	{
		name = "cement",
		restitution = .9,
		friction = .9,
	},
	
	{
		name = "crater_concrete",
		restitution = 0.7,
		friction = 0.95,
	},
	
	{
		name = "crater_debris",
		restitution = 1,
		friction = 0.95,
	},
	
	{
		name = "crater_dirt",
		restitution = 0.4,
		friction = 0.95,
	},
	
	{
		name = "crater_grass",
		restitution = 0.2,
		friction = 0.95,
	},
	
	{
		name = "crater_sand",
		restitution = 0,
		friction = 0.95,
	},
	
	{
		name = "crater_stone",
		restitution = 1,
		friction = 0.95,
	},
	
	{
		name = "dirt",
		restitution = 0.4,
		friction = 0.9,
	},
	
	{
		name = "ditch",
		restitution = 0.4,
		friction = 0.9,
	},
	
	{
		name = "field",
		restitution = 0,
		friction = 0.95,
	},
	
	{
		name = "mud",
		restitution = 0,
		friction = .7,
	},
	
	{
		name = "road_asphalt",
		restitution = 0.8,
		friction = 0.87,
	},
	
	{
		name = "road_dirt",
		restitution = 0.5,
		friction = 0.9,
	},
	
	{
		name = "rubble",
		restitution = 1,
		friction = 0.95,
	},
	
	{
		name = "sand",
		restitution = 0,
		friction = 0.95,
	},
	
	{
		name = "shingle_sp_m01",
		restitution = 0,
		friction = 1,
	},
	
	{
		name = "stone_natural",
		restitution = .8,
		friction = 0.8,
	},
	
	{
		name = "stone_road",
		restitution = 0.7,
		friction = 0.87,
	},
	
	{
		name = "urban",
		restitution = 0.7,
		friction = 0.85,
	},
	
	{
		name = "urban_narrow",
		restitution = 0.6,
		friction = 0.85,
	},
}