require "utils"

--[[cruft i'm not ready to get rid of yet    
    
    if a == 0 and p["p_mildmannered"] ~= true then
       p["p_aggressive"] = true
     elseif a == 1 and p["p_aggressive"] ~= true then
       p["p_mildmannered"] = true
     elseif a == 2 and p["p_intellectual"] ~= true then
       p["p_simpleminded"] = true
     elseif a == 3 and p["p_simpleminded"] ~= true then
       p["p_intellectual"] = true
     elseif a == 4 and p["p_fat"] ~= true then
       p["p_athletic"] = true
     elseif a == 5 and p["p_athletic"] ~= true then
       p["p_fat"] = true
     elseif a == 6 and p["p_rebellious"] ~= true then
       p["p_teamplayer"] = true
     elseif a == 7 and p["p_teamplayer"] ~= true then
       p["p_rebellious"] = true
       
--]]
       
--# char_personality_list.lua
--# Inherent personality traits for characters.

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

local char_personalities = {
  active = false, -- nothing should ever start active
  expire_time = 0, -- personality traits don't expire
  expire_announce = true, -- but should always announce when they disappear
  priority = 3, -- and are never a high priority due to their permanence
  stackable = false -- and never stack
}

local function test() -- gimme some output!
  print("### START TEST CHARACTER PERSONALITY OUTPUT ###")
  for k,v in pairs(list) do
    local b = k
      for k,v in pairs(v) do
        print(b,k,v)
      end
  end
  print("### END TEST CHARACTER PERSONALITY OUTPUT ###")
end

list = {

  p_humble = {
    desc_short = "Humble",
    desc_long = "A great man is always willing to be little.",
    VIG = -1,
    INT = 1,
    ACU = 1,
    reputation_multiply = -0.1,
    overwrites = {p_proud}
    -- They tend to minorly like each other and minorly dislike their opposite, Proud characters.
  },

  p_proud = {
    desc_short = "Proud",
    desc_long = "Don't tell me what I can't do.",
    VIG = 1,
    TEN = 1,
    LIB = 1,
    reputation_multiply = 0.1,
    morale_multiply = 0.25,
    overwrites = {p_humble}
    -- They have no relation to each other, and tend to minorly dislike their opposite, Humble characters.
  },

  p_deceptive = {
    desc_short = "Deceptive",
    desc_long = "PLACEHOLDER",
    ACU = 1,
    overwrites = {p_honest}
    -- They tend to minorly dislike each other and minorly dislike their opposite, Honest characters.
  },

  p_honest = {
    desc_short = "Honest",
    desc_long = "PLACEHOLDER",
    TEN = 1,
    overwrites = {p_deceptive}
    -- They tend to minorly dislike each other and minorly dislike their opposite, Honest characters.
  },

  p_progressive = {
    desc_short = "Progressive",
    desc_long = "You can never plan the future by the past.",
    TEN = 1,
    overwrites = {p_conservative}
    -- They tend to strongly like each other, and strongly dislike their opposite, Conservative characters.
  },

  p_conservative = {
    desc_short = "Conservative",
    desc_long = "It is not unusual to mistake change for progress.",
    TEN = 1,
    overwrites = {p_progressive}
    -- They tend to strongly like each other, and strongly dislike their opposite, Progressive characters.
  },

  p_cautious = {
    desc_short = "Cautious",
    desc_long = "PLACEHOLDER",
    INT = 1,
    ACU = 1,
    reputation_multiply = -0.1,
    overwrites = {p_bold}
    -- They have no relation to each other, and tend to minorly dislike their opposite, Bold characters.
  },

  p_bold = {
    desc_short = "Bold",
    desc_long = "Fortune favors the bold.",
    VIG = 1,
    LIB = 1,
    reputation_multiply = 0.1,
    overwrites = {p_cautious}
    -- They have no relation to each other, and tend to minorly dislike their opposite, Cautious characters.
  },

  p_idealistic = {
    desc_short = "Idealistic",
    desc_long = "PLACEHOLDER",
    LIB = 1,
    TEN = 1,
    reputation_multiply = 0.1,
    overwrites = {p_pragmatic}
    -- They have no relation to each other, and tend to minorly dislike their opposite, Cautious characters.
  },

  p_pragmatic = {
    desc_short = "Pragmatic",
    desc_long = "PLACEHOLDER",
    LIB = 1,
    INT = 1,
    reputation_multiply = -0.1,
    overwrites = {p_idealistic}
    -- They have no relation to each other, and tend to minorly dislike their opposite, Cautious characters.
  },

  p_lazy = {
    desc_short = "Lazy",
    desc_long = "PLACEHOLDER",
    VIG = -1,
    TEN = -1,
    ACU = -1,
    SPD = -1,
    reputation_multiply = -0.1,
    overwrites = {p_diligent}
    -- Regular characters have a minor dislike of lazy characters.
  },

  p_diligent = {
    desc_short = "Diligent",
    desc_long = "PLACEHOLDER",
    VIG = 1,
    TEN = 1,
    ACU = 1,
    SPD = 1,
    reputation_multiply = 0.1,
    overwrites = {p_lazy}
    -- Diligent characters like other diligent characters, and strongly dislike lazy characters.
  },

  p_tolerant = {
    desc_short = "Tolerant",
    desc_long = "PLACEHOLDER",
    INT = 1,
    overwrites = {p_militant}
    -- They have no relation to each other, and tend to minorly dislike their opposite, Militant characters.
  },

  p_militant = {
    desc_short = "Militant",
    desc_long = "PLACEHOLDER",
    VIG = 1,
    TEN = 1,
    overwrites = {p_tolerant}
    -- They have no relation to each other, and tend to minorly dislike their opposite, Tolerant characters.
  },

}

-- apply char_personalities (todo: make this inherit instead.)
for k,v in pairs(list) do
  table.merge(list[k],char_personalities)
end

test()