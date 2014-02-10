-- char_misc_effects.lua
-- miscellaneous effects, probably need to be reorganized

char_misc = {
  
  agreement = {
    desc_short = "Agreement",
    desc_long = "Agrees with something you did recently.",
    LIB = 1,
    stackable = true
    },

  disagreement = {
    desc_short = "Disagreement",
    desc_long = "Does not like something you did recently.",
    LIB = -1,
    stackable = true
    },

  respect = {
    desc_short = "Respect",
    desc_long = "Respects you for your leadership and the choices you've made.",
    LIB = 2
    },

  disgruntled = {
    desc_short = "Disgruntled",
    desc_long = "Unhappy with your leadership and the choices you've made.",
    LIB = -2,
    priority = 2
  }

  edgy = {
    desc_short = "Edgy",
    desc_long = "This character's eyes are darting past every doorway and rooftop...",
    ACU = 2,
    LIB = -1,
    stackable = true
  },

  --# injury status

  injured = {
    desc_short = "Profile",
    desc_long = "On a medical profile and cannot leave the wire.",
    VIG = -1
    },

  injured_battle = {
    desc_short = "Injured in Combat",
    desc_long = "Injured in combat, but well enough to recover at the aid station.",
    VIG = -1
    },

  --# general status effects

  motivated = {
    desc_short = "Motivated",
    desc_long = "This character is highly motivated and enthusiastic.",
    VIG = 2,
    INT = 1,
    TEN = 2,
    ACU = 1,
    LOY = 2,
    SPD = 1,
    priority = 1,
    stackable = true
    },

  demotivated = {
    desc_short = "Demotivated",
    desc_long = "This character is demotivated and discouraged.",
    VIG = -2,
    INT = -1,
    TEN = -2,
    ACU = -1,
    LOY = -2,
    SPD = -1,
    priority = 1,
    stackable = true
    },

  enraged = {
    desc_short = "Enraged",
    desc_long = "This character is enraged and wants to tear something (or someone) apart.",
    VIG = 3,
    INT = -2,
    TEN = 3,
    ACU = -2,
    LOY = -2,
    priority = 1
    },

  fearful = {
    desc_short = "Fearful",
    desc_long = "This character is afraid to leave the base.",
    VIG = -2,
    TEN = -2,
    LOY = -2,
    priority = 1
    },

  hesitant = {
    desc_short = "Hesitant",
    desc_long = "Not too comfortable going outside the wire.",
    VIG = -1,
    TEN = -1,
    LOY = -1,
    priority = 2,
    stackable = true
    },

  confident = {
    desc_short = "Confident",
    desc_long = "Training and experience make this character confident leaving the wire.",
    VIG = 1,
    INT = 1,
    TEN = 1,
    priority = 2,
    stackable = true
  },
  
}