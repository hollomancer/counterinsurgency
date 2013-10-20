--# char_mod_list
--# lists all possible character status modifiers

--# SAMPLE
--# w_ethos = {
--#   desc_short = "Warrior Ethos" -- short description
--#   desc_long = "Your team is aggressive." -- for tooltips
--#   img = imagefile -- icon
--#   VIG = 1
--#   priority = 3 -- priority to show ingame. ranges from 1 to 4. 4 is invisible.
--#   stackable = true -- can there be more than one level of this effect?
--#   expire_time = 0 -- how many turns before this status goes away? 0 is never.
--#   expire_announce = false -- does the game announce when this status effect goes away?
--# }

list = {

--# ethos status; stacks based on how high you are on the ethos meter

w_ethos = {
  desc_short = "Warrior Ethos",
  desc_long = "Your team is aggressive, energetic, and ready to engage and destroy the enemy.",
  VIG = 1,
  INT = -1,
  priority = 3,
  stackable = true
  -- My bayonet, on the wings of power, keeps the peace worldwide.
  },

h_ethos = {
  desc_short = "Humanitarian Ethos",
  desc_long = "Your team is patient, contemplative, and ready to win hearts and minds.",
  INT = 1,
  VIG = -1,
  priority = 3,
  stackable = true
  -- Some of the best weapons for counterinsurgents do not shoot.
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

--# ACU status effects

awareness = {
  desc_short = "Situational Awareness",
  desc_long = "Maintaining a heightened state of awareness.",
  ACU = 1,
  stackable = true
  },

edgy = {
  desc_short = "Edgy",
  desc_long = "This character's eyes are darting past every doorway and rooftop...",
  ACU = 2,
  LOY = -1,
  stackable = true
  },

--# LOY status effects, usually based on vignette choices

agreement = {
  desc_short = "Agreement",
  desc_long = "Agrees with something you did recently.",
  LOY = 1,
  stackable = true
  },

disagreement = {
  desc_short = "Disagreement",
  desc_long = "Does not like something you did recently.",
  LOY = -1,
  stackable = true
  },

respect = {
  desc_short = "Respect",
  desc_long = "Respects you for your leadership and the choices you've made.",
  LOY = 2
  },

disgruntled = {
  desc_short = "Disgruntled",
  desc_long = "Unhappy with your leadership and the choices you've made.",
  LOY = -2,
  priority = 2
  }

-- org_pt = {
--   desc_short = "Physical Training"
-- }

--# end
}