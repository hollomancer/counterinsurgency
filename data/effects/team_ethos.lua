-- team_effects.lua

team_effects = {

  team_war_ethos = {
    desc_short = "Warrior Ethos",
    desc_long = "Your team is aggressive, energetic, and ready to engage and destroy the enemy.",
    VIG = {"actor","addsub",1},
    INT = {"actor","addsub",-1},
    priority = 3,
    -- My bayonet, on the wings of power, keeps the peace worldwide.
    },

  team_hum_ethos = {
    desc_short = "Humanitarian Ethos",
    desc_long = "Your team is patient, contemplative, and ready to win hearts and minds.",
    INT = {"actor","addsub",1},
    VIG = {"actor","addsub",-1},
    priority = 3,
    -- Some of the best weapons for counterinsurgents do not shoot.
  },

}