# team_ethos.lua

team_ethos:

  base:
    name: "PLACEHOLDER",
    desc_short: "PLACEHOLDER",
    desc_long: "PLACEHOLDER",
    expire_time: 0, # ethos don't expire
    expire_announce: true, # but should always announce when they disappear
    priority: 3, # and are never a high priority due to their permanence
    stackable: true, # and always stack
 
  
  team_war_ethos:
    name: "team_war_ethos"
    desc_short: "Warrior Ethos",
    desc_long: "Your team is aggressive, energetic, and ready to engage and destroy the enemy.",
    VIG: 1,
    INT: -1,
    priority: 3,
    # My bayonet, on the wings of power, keeps the peace worldwide.
   

  team_hum_ethos:
    name: "team_hum_ethos"
    desc_short: "Humanitarian Ethos",
    desc_long: "Your team is patient, contemplative, and ready to win hearts and minds.",
    INT: 1,
    VIG: -1,
    priority: 3,
    # Some of the best weapons for counterinsurgents do not shoot.
 

  team_ent_ethos:
    name: "team_ent_ethos"
    desc_short: "Enterprise Ethos",
    desc_long: "Your team is cunning, ambitious, and ready to make their mark.",
    LIB: 1,
    ACU: -1,
    priority: 3,
 

  team_aca_ethos:
    name: "team_aca_ethos"
    desc_short: "Academic Ethos",
    desc_long: "Your team is observant, restrained, and ready to learn about their environment.",
    ACU: 1,
    LIB: -1,
    priority: 3,
 

