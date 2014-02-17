-- team_ethos.lua

team_ethos = {

  base = {
    name = "PLACEHOLDER",
    desc_short = "PLACEHOLDER",
    desc_long = "PLACEHOLDER",
    expire_time = 0, -- team effects don't expire
    expire_announce = true, -- but should always announce when they disappear
    priority = 3, -- and are never a high priority due to their permanence
    stackable = true, -- but always stack
  }
  
  team_war_ethos = {
    desc_short = "Warrior Ethos",
    desc_long = "Your team is aggressive, energetic, and ready to engage and destroy the enemy.",
    VIG = {'actor','addsub',1},
    INT = {'actor','addsub',-1},
    priority = 3,
    -- My bayonet, on the wings of power, keeps the peace worldwide.
    },

  team_hum_ethos = {
    desc_short = "Humanitarian Ethos",
    desc_long = "Your team is patient, contemplative, and ready to win hearts and minds.",
    INT = {'actor','addsub',1},
    VIG = {'actor','addsub',-1},
    priority = 3,
    -- Some of the best weapons for counterinsurgents do not shoot.
  },

}