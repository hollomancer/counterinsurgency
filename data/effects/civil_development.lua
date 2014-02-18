--# civil_development.lua
--# Base data for all civil development effects.
  
civil_development_effects = {
  
  base = {
    name = "PLACEHOLDER",
    desc_short = "PLACEHOLDER",
    desc_long = "PLACEHOLDER",
    -- expire_time = 0,
    expire_announce = true, -- but should always announce when they disappear
    priority = 3, -- and are never a high priority due to their permanence
    stackable = true, -- and always stack
  },
  
  cd_police_authority  = {
    -- Adds 0.1 relation between LNs and the police for every civdev_police point above 50.
    -- Subtracts 0.1 relation between LNs and the police for every civdev_police point below 50. 
  },
  
	cd_local_identity  = {
     -- Adds 0.1 relation between LNs and the police for every civdev_community point above 50.
     -- Subtracts 0.1 relation between LNs and the police for every civdev_community point below 50. 
  },
  
	cd_economic_conditions  = {
     -- Adds 0.1 relation between LNs and business factions for every civdev_point above 50.
     -- Subtracts 0.1 relation between LNs and business factions for every civdev_business point below 50.
  },

	cd_national_identity  = {
     -- Adds 0.1 relation between LNs and national government factions for every civdev_government point above 50.
  },
  
	cd_ethnic_identity  = {
     -- Subtracts 0.1 relation between LNs and national government factions for every civdev_government point below 50.
  },
  
	cd_civil_liberty  = {
     -- Adds 0.1 relation between LNs and national government factions for every civdev_government and civdev_information point above 50.
  },
  
	cd_prosperity  = {
     -- Adds 0.1 relation between LNs and national government factions for every civdev_business and civdev_infrastructure point above 50.
  },
  
	cd_govt_corruption  = {
     -- Subtracts 0.1 relation between LNs and national government factions for every civdev_information point below 50.
  },
  
	cd_govt_oppression  = {
     -- Subtracts 0.1 relation between LNs and national government factions for every civdev_community point below 50.
  },
  
	cd_police_corruption  = {
     -- Subtracts 0.1 relation between LNs and the police for every civdev_information point below 50.
  },
  
	cd_police_oppression  = {
     -- Subtracts 0.1 relation between LNs and the police for every civdev_community point below 50.
  },
  
	cd_squalor  = {
     -- Subtracts 0.1 relation between LNs and national government factions for every civdev_infrastructure point below 50.
  }

}