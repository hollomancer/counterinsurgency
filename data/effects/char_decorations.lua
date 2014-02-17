--# char_personalities.lua
--# Decoration-type effects for characters.

-- these need to add skill stacks

char_decorations = {

  base = {
    name = "PLACEHOLDER",
    desc_short = "PLACEHOLDER",
    desc_long = "PLACEHOLDER",
    expire_time = 0, -- personality traits don't expire
    expire_announce = true, -- and should never disappear so let's say something if they do
    priority = 3, -- and are never a high priority due to their permanence
    stackable = false, -- and never stack
  },
  
  dec_i_achievement = {
    name = "dec_i_achievement",
    desc_short = "Iron Achievement Medal"
    morale = 1
  },
  
  dec_i_commendation_v = {
    name = "dec_i_commendation",
    desc_short = "Iron Commendation for Valor"
    morale = 1
    VIG = 1
  },
  dec_i_commendation_s = {
    name = "dec_i_commendation",
    desc_short = "Iron Commendation for Service"
    morale = 1
    INT = 1
  },
  
  dec_i_combatletter = {
    -- awarded after an action completes where you enter combat
    name = "dec_i_combat",
    desc_short = "Iron Combat Action Letter"
    -- increases relation
  },
  
  dec_b_achievement = {
    name = "dec_b_achievement",
    desc_short = "Bronze Achievement Medal"
    morale = 2
  },
  
  dec_b_commendation_v = {
    name = "dec_b_commendation",
    desc_short = "Bronze Commendation for Valor"
    morale = 1
    VIG = 1
    TEN = 1
  },
  dec_b_commendation_s = {
    name = "dec_b_commendation",
    desc_short = "Bronze Commendation for Service"
    morale = 1
    INT = 1
    ACU = 1
  },
  
  dec_b_combatletter = {
    -- awarded after an action completes where you enter combat
    name = "dec_b_combatletter",
    desc_short = "Bronze Combat Action Letter"
    -- increases relation
  },
  
  dec_s_achievement = {
    name = "dec_s_achievement",
    desc_short = "Silver Achievement Medal"
    morale = 3
  },
  
  dec_s_commendation_v = {
    name = "dec_s_commendation",
    desc_short = "Silver Commendation for Valor"
    morale = 2
    VIG = 1
    TEN = 1
  },
  dec_s_commendation_s = {
    name = "dec_s_commendation",
    desc_short = "Silver Commendation for Service"
    morale = 2
    INT = 1
    ACU = 1
  },
  
  dec_s_combatletter = {
    -- awarded after an action completes where you enter combat
    name = "dec_s_combatletter",
    desc_short = "Silver Combat Action Letter"
    -- increases relation
  },
  
}
