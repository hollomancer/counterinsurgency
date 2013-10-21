require "core/Utils"
require "core/Effect"

require "core/Test"
       
--# char_personalities.lua
--# Inherent personality traits for characters.

char_personalities = {

  base = {
    name = "PLACEHOLDER",
    expire_time = 0, -- personality traits don't expire
    expire_announce = true, -- but should always announce when they disappear
    priority = 3, -- and are never a high priority due to their permanence
    stackable = false, -- and never stack
  },

  p_humble = {
    name = "p_humble",
    desc_short = "Humble",
    desc_long = "A great man is always willing to be little.",
    VIG = -1,
    INT = 1,
    ACU = 1,
    reputation_multiply = -0.1,
    overwrites = {"p_proud"}
    -- They tend to minorly like each other and minorly dislike their opposite, Proud characters.
  },

  p_proud = {
    name = "p_proud",
    desc_short = "Proud",
    desc_long = "Don't tell me what I can't do.",
    VIG = 1,
    TEN = 1,
    LIB = 1,
    reputation_multiply = 0.1,
    morale_multiply = 0.25,
    overwrites = {"p_humble"}
    -- They have no relation to each other, and tend to minorly dislike their opposite, Humble characters.
  },

  p_deceptive = {
    name = "p_deceptive",
    desc_short = "Deceptive",
    desc_long = "PLACEHOLDER",
    ACU = 1,
    overwrites = {"p_honest"}
    -- They tend to minorly dislike each other and minorly dislike their opposite, Honest characters.
  },

  p_honest = {
    name = "p_honest",
    desc_short = "Honest",
    desc_long = "PLACEHOLDER",
    TEN = 1,
    overwrites = {"p_deceptive"}
    -- They tend to minorly dislike each other and minorly dislike their opposite, Honest characters.
  },

  p_progressive = {
    name = "p_progressive",
    desc_short = "Progressive",
    desc_long = "You can never plan the future by the past.",
    TEN = 1,
    overwrites = {"p_conservative"}
    -- They tend to strongly like each other, and strongly dislike their opposite, Conservative characters.
  },

  p_conservative = {
    name = "p_conservative",
    desc_short = "Conservative",
    desc_long = "It is not unusual to mistake change for progress.",
    TEN = 1,
    overwrites = {"p_progressive"}
    -- They tend to strongly like each other, and strongly dislike their opposite, Progressive characters.
  },

  p_cautious = {
    name = "p_cautious",
    desc_short = "Cautious",
    desc_long = "PLACEHOLDER",
    INT = 1,
    ACU = 1,
    reputation_multiply = -0.1,
    overwrites = {"p_bold"}
    -- They have no relation to each other, and tend to minorly dislike their opposite, Bold characters.
  },

  p_bold = {
    name = "p_bold",
    desc_short = "Bold",
    desc_long = "Fortune favors the bold.",
    VIG = 1,
    LIB = 1,
    reputation_multiply = 0.1,
    overwrites = {"p_cautious"}
    -- They have no relation to each other, and tend to minorly dislike their opposite, Cautious characters.
  },

  p_idealistic = {
    name = "p_idealistic",
    desc_short = "Idealistic",
    desc_long = "PLACEHOLDER",
    LIB = 1,
    TEN = 1,
    reputation_multiply = 0.1,
    overwrites = {"p_pragmatic"}
    -- They have no relation to each other, and tend to minorly dislike their opposite, Cautious characters.
  },

  p_pragmatic = {
    name = "p_pragmatic",
    desc_short = "Pragmatic",
    desc_long = "PLACEHOLDER",
    LIB = 1,
    INT = 1,
    reputation_multiply = -0.1,
    overwrites = {"p_idealistic"}
    -- They have no relation to each other, and tend to minorly dislike their opposite, Cautious characters.
  },

  p_lazy = {
    name = "p_lazy",
    desc_short = "Lazy",
    desc_long = "PLACEHOLDER",
    VIG = -1,
    TEN = -1,
    ACU = -1,
    SPD = -1,
    reputation_multiply = -0.1,
    overwrites = {"p_diligent"}
    -- Regular characters have a minor dislike of lazy characters.
  },

  p_diligent = {
    name = "p_diligent",
    desc_short = "Diligent",
    desc_long = "PLACEHOLDER",
    VIG = 1,
    TEN = 1,
    ACU = 1,
    SPD = 1,
    reputation_multiply = 0.1,
    overwrites = {"p_lazy"}
    -- Diligent characters like other diligent characters, and strongly dislike lazy characters.
  },

  p_tolerant = {
    name = "p_tolerant",
    desc_short = "Tolerant",
    desc_long = "PLACEHOLDER",
    INT = 1,
    overwrites = {"p_militant"}
    -- They have no relation to each other, and tend to minorly dislike their opposite, Militant characters.
  },

  p_militant = {
    name = "p_militant",
    desc_short = "Militant",
    desc_long = "PLACEHOLDER",
    VIG = 1,
    TEN = 1,
    overwrites = {"p_tolerant"}
    -- They have no relation to each other, and tend to minorly dislike their opposite, Tolerant characters.
  },

  p_mildmannered = {
    name = "p_mildmannered",
    desc_short = "Mild-mannered",
    desc_long = "PLACEHOLDER",
    VIG = -1,
    TEN = -1,
    LIB = -1,
    overwrites = {"p_aggressive"}
  },

  p_aggressive = {
    name = "p_aggressive",
    desc_short = "Aggressive",
    desc_long = "PLACEHOLDER",
    VIG = 1,
    TEN = 1,
    LIB = 1,
    overwrites = {"p_mildmannered"}
  },

  p_slowwitted = {
    name = "p_slowwitted",
    desc_short = "Slow-witted",
    desc_long = "Not the sharpest knife in the drawer.",
    INT = -2,
    SPD = -1,
    overwrites = {"p_quickwitted"}
  },

  p_quickwitted = {
    name = "p_quickwitted",
    desc_short = "Quick-witted",
    desc_long = "PLACEHOLDER",
    INT = 2,
    SPD = 1,
    overwrites = {"p_slowwitted"}
  },

  p_strong = {
    name = "p_strong",
    desc_short = "Strong",
    desc_long = "PLACEHOLDER",
    VIG = 2,
    TEN = 1,
    overwrites = {"p_weak"}
  },

  p_weak = {
    name = "p_weak",
    desc_short = "Weak",
    desc_long = "A hard gainer.",
    VIG = -2,
    TEN = -1,
    overwrites = {"p_strong"}
  },

  p_athletic = {
    name = "p_athletic",
    desc_short = "Athletic",
    desc_long = "PLACEHOLDER",
    TEN = 2,
    SPD = 1,
    overwrites = {"p_outofshape"}
  },

  p_outofshape = {
    name = "p_outofshape",
    desc_short = "Out of Shape",
    desc_long = "This person needs to hit the gym.",
    TEN = -2,
    SPD = -1,
    overwrites = {"p_athletic"}
  },
  
  p_slim = {
    name = "p_slim",
    desc_short = "Slim",
    desc_long = "PLACEHOLDER",
    VIG = -1,
    SPD = 2,
    overwrites = {"p_large"}
  },

  p_large = {
    name = "p_large",
    desc_short = "Large",
    desc_long = "Large and in charge.",
    TEN = 1,
    SPD = -2,
    overwrites = {"p_slim"}
  },

  p_pooreyesight = {
    name = "p_pooreyesight",
    desc_short = "Poor Eyesight",
    desc_long = "PLACEHOLDER",
    ACU = -2,
    overwrites = {"p_eagleeyed"}
  },

  p_sharpeyed = {
    name = "p_sharpeyed",
    desc_short = "Sharpeyed",
    desc_long = "PLACEHOLDER",
    ACU = 2,
    overwrites = {"p_pooreyesight"}
  },
}

--Test.ParseEffectList()
--Test.BuildEffect(char_personalities.base,char_personalities.p_proud)
--Test.OverwriteEffect()