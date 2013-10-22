--# char_backgrounds.lua
--# Inherent background traits for characters.

char_backgrounds = {
  
  base = {
    name = "PLACEHOLDER",
    expire_time = 0, -- backgrounds don't expire
    expire_announce = true, -- but should always announce when they disappear
    priority = 3, -- and are never a high priority due to their permanence
    stackable = false, -- and never stack
  },
  
  b_regular = {
    name = "b_regular",
    desc_short = "Background: Regular",
    desc_long = "This character is a career soldier. Along with the skills and personalities that come with such a lifestyle, they also get along better with other military and law enforcement personnel, regardless of their allegiance.",
    VIG = 2,
    TEN = 2,
    LIB = -1,
    warrior_ethos = 2,
  },

  b_militia = {
    name = "b_militia",
    desc_short = "Background: Militia",
    desc_long = "This character is a weekend warrior. Career soldiers tend to like them a little less, but they also bring skills to the table that the military doesn't tend to have in abundance.",
    VIG = 1,
    TEN = 1,
    warrior_ethos = 1,
    humanitarian_ethos = 1,
  },

  b_civilian = {
    name = "b_civilian",
    desc_short = "Background: Civilian",
    INT = 1,
    LIB = 1,
    humanitarian_ethos = 2,
  },
  
  b_infantry = {
    name = "b_infantry",
    desc_short = "Background: Infantry",
    desc_long = "Infantry are soldiers that fight on foot. They undergo training that is more physically stressful and psychologically demanding, in order to engage, fight, and defeat the enemy in close combat.",
    VIG = 2,
    TEN = 2,
    ACU = 1,
    LIB = -1,
    SPD = 1,
    warrior_ethos = 1,
  },
  
  b_armor = {
    name = "b_armor",
    desc_short = "Background: Armor",
    desc_long = "Fighting without six inches of armor around you is for suckers. This character has been trained to drive and gun in vehicles.",
    VIG = 2,
    TEN = 1,
    ACU = 2,
    LIB = -1,
    SPD = 1,
    warrior_ethos = 1,
  },
  
  b_fires = {
    name = "b_fires",
    desc_short = "Background: Fires",
    desc_long = "Death from above! Artillery, naval cannons, helicopter gunships, light and heavy bombers - you name it, this character can bring the pain wherever you need it.",
    VIG = 1,
    INT = 1,
    TEN = 1,
    ACU = 3,
    LIB = -1,
    warrior_ethos = 1,
  },

  b_engineer = {
    name = "b_engineer",
    desc_short = "Background: Engineer",
    desc_long = "This character either has a civilian or military background in construction and demolition.",
    VIG = 1,
    INT = 2,
    TEN = 1,
    ACU = 1,
  },

  b_logistics = {
    name = "b_logistics",
    desc_short = "Background: Logistics",
    VIG = 1,
    INT = 2,
    TEN = 1,
    ACU = 1,
  },

  b_academic = {
    name = "b_academic",
    desc_short = "Background: Academic",
    INT = 3,
    ACU = 2,
    LIB = 1,
  },
  
  b_police = {
    name = "b_police",
    desc_short = "Background: Law Enforcement", 
    desc_long = "Previous experience in police work gives this character an edge when dealing with other cops. They also relate to other soldiers a little better.",
    VIG = 1,
    TEN = 1,
    ACU = 2,
    LIB = 1,
    warrior_ethos = 1,
    humanitarian_ethos = 1,
  },
  
  b_young = {
    name = "b_young",
    desc_short = "Young", 
    desc_long = "Young, dumb, and full of... enthusiasm.",
    VIG = 3,
    INT = -2,
    TEN = 1,
    ACU = 1,
    LIB = 1,
    SPD = 3,
  },
  
  b_seasoned = {
    name = "b_seasoned",
    desc_short = "Seasoned", 
    desc_long = "I've seen some things, man, and some stuff. I wouldn't recommend it.",
    VIG = 1,
    INT = 1,
    TEN = 2,
    SPD = 1,
  },
  
  b_veteran = {
    name = "b_veteran",
    desc_short = "Veteran", 
    desc_long = "There are old soldiers, and bold soldiers, but no old, bold soldiers.",
    INT = 3,
    TEN = 3,
  },
  
  b_elder = {
    name = "b_elder",
    desc_short = "Elder", 
    desc_long = "I am not young enough to know everything.",
    INT = 4,
    TEN = 1,
    LIB = 2,
  },
}