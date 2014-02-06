--# char_skills.lua
--# Skill effects for characters.

char_skills = {

  base = {
    name = "PLACEHOLDER",
    desc_short = "PLACEHOLDER",
    desc_long = "PLACEHOLDER",
    expire_time = 0, -- skill effects don't expire
    expire_announce = true, -- but should always announce when they disappear
    priority = 3, -- and are never a high priority due to their permanence
    stackable = false, -- and never stack
  },

  sk_awareness = {
    name = "sk_awareness",
    desc_short = "Awareness",
    desc_long = "Stay alert, stay alive.",
  },

  sk_tactics = {
    name = "sk_tactics",
    desc_short = "Tactics",
  },

  sk_khot_culture = {
    name = "sk_khot_culture",
    desc_short = "Khotainan Culture",
  },

  sk_negotiation = {
    name = "sk_negotiation",
    desc_short = "Negotiation",
  },

  sk_investigation = {
    name = "sk_investigation",
    desc_short = "Investigation",
    -- based off ACU and .5 INT
  },

  sk_marksmanship = {
    name = "sk_marksmanship",
    desc_short = "Marksmanship",
  },

  sk_leadership = {
    name = "sk_leadership",
    desc_short = "Leadership",
    -- based off 3 parts LIB, 1 part VIG/INT/TEN/ACU
  },
  
  sk_aerobic = {
    name = "sk_aerobic",
    desc_short = "Aerobic Fitness",
    -- based off SPD and .5 TEN
  },
  
  sk_anaerobic = {
    name = "sk_aerobic",
    desc_short = "Anaerobic Fitness",
    -- based off VIG and .5 TEN
  },
}