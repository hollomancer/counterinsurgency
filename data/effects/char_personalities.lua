--# char_personalities.lua
--# Inherent personality traits for characters.

char_personalities = {

  base = {
    name = "PLACEHOLDER",
    desc_short = "PLACEHOLDER",
    desc_long = "PLACEHOLDER",
    expire_time = 0, -- personality traits don't expire`
    expire_announce = true, -- but should always announce when they disappear
    priority = 3, -- and are never a high priority due to their permanence
    stackable = false, -- and never stack
  },

  p_humble = {
    name = "p_humble",
    desc_short = "Humble",
    desc_long = "A great man is always willing to be little.",
    VIG = {'actor','addsub',-1},
    INT = {'actor','addsub',1},
    ACU = {'actor','addsub',1},
    reputation = {'actor','*',0.9},
    overwrites = {"p_proud"},
    relation = {
      p_proud = {'actor','addsub',-5},
      p_humble = {'actor','addsub',5},
      }
  },

  p_proud = {
    name = "p_proud",
    desc_short = "Proud",
    desc_long = "Don't tell me what I can't do.",
    VIG = {'actor','addsub',1},
    TEN = {'actor','addsub',1},
    LIB = {'actor','addsub',1},
    reputation = {'actor','*',1.1},
    morale = {'actor','addsub',5},
    overwrites = {"p_humble"},
    relation = {
      p_humble = {'actor','addsub',-5},
      }
  },

  p_deceptive = {
    name = "p_deceptive",
    desc_short = "Deceptive",
    desc_long = "PLACEHOLDER",
    ACU = {'actor','addsub',1},
    overwrites = {"p_honest"},
    relation = {
      p_deceptive = {'actor','addsub',-5},
      p_honest = {'actor','addsub',-5},
      }
    -- They tend to minorly dislike each other and minorly dislike their opposite, Honest characters.
  },

  p_honest = {
    name = "p_honest",
    desc_short = "Honest",
    desc_long = "PLACEHOLDER",
    TEN = {'actor','addsub',1},
    overwrites = {"p_deceptive"},
    relation = {
      p_deceptive = {'actor','addsub',-5},
      p_honest = {'actor','addsub',5},
      }
  },

  p_progressive = {
    name = "p_progressive",
    desc_short = "Progressive",
    desc_long = "You can never plan the future by the past.",
    TEN = {'actor','addsub',1},
    overwrites = {"p_conservative"},
    relation = {
      p_progressive = {'actor','addsub',10},
      p_conservative = {'actor','addsub',-10},
      }
  },

  p_conservative = {
    name = "p_conservative",
    desc_short = "Conservative",
    desc_long = "It is not unusual to mistake change for progress.",
    TEN = {'actor','addsub',1},
    overwrites = {"p_progressive"},
    relation = {
      p_progressive = {'actor','addsub',-10},
      p_conservative = {'actor','addsub',10},
      }
  },

  p_cautious = {
    name = "p_cautious",
    desc_short = "Cautious",
    desc_long = "PLACEHOLDER",
    INT = {'actor','addsub',1},
    ACU = {'actor','addsub',1},
    reputation = {'actor','*',0.9},
    morale = {'actor','addsub',-5},
    overwrites = {"p_bold"},
    relation = {
      p_bold = {'actor','addsub',-5},
      }
  },

  p_bold = {
    name = "p_bold",
    desc_short = "Bold",
    desc_long = "Fortune favors the bold.",
    VIG = {'actor','addsub',1},
    LIB = {'actor','addsub',1},
    reputation = {'actor','*',1.1},
    morale = {'actor','addsub',5},
    overwrites = {"p_cautious"},
    relation = {
      p_cautious = {'actor','addsub',-5},
      }
  },

  p_idealistic = {
    name = "p_idealistic",
    desc_short = "Idealistic",
    desc_long = "PLACEHOLDER",
    LIB = {'actor','addsub',1},
    TEN = {'actor','addsub',1},
    reputation = {'actor','*',1.1},
    morale = {'actor','addsub',5},
    overwrites = {"p_pragmatic"},
    relation = {
      p_idealistic = {'actor','addsub',10},      
      p_pragmatic = {'actor','addsub',-5},
      }
  },

  p_pragmatic = {
    name = "p_pragmatic",
    desc_short = "Pragmatic",
    desc_long = "PLACEHOLDER",
    LIB = {'actor','addsub',1},
    INT = {'actor','addsub',1},
    reputation = {'actor','*',0.9},
    morale = {'actor','addsub',-5},
    overwrites = {"p_idealistic"},
    relation = {
      p_pragmatic = {'actor','addsub',10},      
      p_idealistic = {'actor','addsub',-5},
      }
  },

  p_lazy = {
    name = "p_lazy",
    desc_short = "Lazy",
    desc_long = "PLACEHOLDER",
    VIG = {'actor','addsub',-1},
    TEN = {'actor','addsub',-1},
    ACU = {'actor','addsub',-1},
    SPD = {'actor','addsub',-1},
    reputation = {'actor','*',0.9},
    morale = {'actor','addsub',-5},
    overwrites = {"p_diligent"}
    -- Regular characters have a minor dislike of lazy characters, so I need a 'universal dislike' option.
  },

  p_diligent = {
    name = "p_diligent",
    desc_short = "Diligent",
    desc_long = "PLACEHOLDER",
    VIG = {'actor','addsub',1},
    TEN = {'actor','addsub',1},
    ACU = {'actor','addsub',1},
    SPD = {'actor','addsub',1},
    reputation = {'actor','*',1.1},
    morale = {'actor','addsub',5},
    overwrites = {"p_lazy"},
    relation = {
      p_diligent = {'actor','addsub',5},      
      p_lazy = {'actor','addsub',-10},
      }
  },

  p_tolerant = {
    name = "p_tolerant",
    desc_short = "Tolerant",
    desc_long = "PLACEHOLDER",
    INT = {'actor','addsub',1},
    overwrites = {"p_militant"},
    relation = {
      p_militant = {'actor','addsub',-5},
      }
  },

  p_militant = {
    name = "p_militant",
    desc_short = "Militant",
    desc_long = "PLACEHOLDER",
    VIG = {'actor','addsub',1},
    TEN = {'actor','addsub',1},
    overwrites = {"p_tolerant"},
    relation = {
      p_tolerant = {'actor','addsub',-5},
      }
  },

  p_mildmannered = {
    name = "p_mildmannered",
    desc_short = "Mild-mannered",
    desc_long = "PLACEHOLDER",
    VIG = {'actor','addsub',-1},
    TEN = {'actor','addsub',-1},
    LIB = {'actor','addsub',-1},
    morale = {'actor','addsub',-5},
    overwrites = {"p_aggressive"}
  },

  p_aggressive = {
    name = "p_aggressive",
    desc_short = "Aggressive",
    desc_long = "PLACEHOLDER",
    VIG = {'actor','addsub',1},
    TEN = {'actor','addsub',1},
    LIB = {'actor','addsub',1},
    overwrites = {"p_mildmannered"}
  },

  p_slowwitted = {
    name = "p_slowwitted",
    desc_short = "Slow-witted",
    desc_long = "Not the sharpest knife in the drawer.",
    INT = {'actor','addsub',-2},
    SPD = {'actor','addsub',-1},
    overwrites = {"p_quickwitted"}
  },

  p_quickwitted = {
    name = "p_quickwitted",
    desc_short = "Quick-witted",
    desc_long = "PLACEHOLDER",
    INT = {'actor','addsub',2},
    SPD = {'actor','addsub',1},
    overwrites = {"p_slowwitted"}
  },

  p_strong = {
    name = "p_strong",
    desc_short = "Strong",
    desc_long = "PLACEHOLDER",
    VIG = {'actor','addsub',2},
    TEN = {'actor','addsub',1},
    overwrites = {"p_weak"}
  },

  p_weak = {
    name = "p_weak",
    desc_short = "Weak",
    desc_long = "A hard gainer.",
    VIG = {'actor','addsub',-2},
    TEN = {'actor','addsub',-1},
    morale = {'actor','addsub',-5},
    overwrites = {"p_strong"}
  },

  p_athletic = {
    name = "p_athletic",
    desc_short = "Athletic",
    desc_long = "PLACEHOLDER",
    TEN = {'actor','addsub',2},
    SPD = {'actor','addsub',1},
    morale = {'actor','addsub',5},
    overwrites = {"p_outofshape"}
  },

  p_outofshape = {
    name = "p_outofshape",
    desc_short = "Out of Shape",
    desc_long = "This person needs to hit the gym.",
    TEN = {'actor','addsub',-2},
    SPD = {'actor','addsub',-1},
    morale = {'actor','addsub',-5},
    overwrites = {"p_athletic"}
  },
  
  p_slim = {
    name = "p_slim",
    desc_short = "Slim",
    desc_long = "PLACEHOLDER",
    VIG = {'actor','addsub',-1},
    SPD = {'actor','addsub',2},
    overwrites = {"p_large"}
  },

  p_large = {
    name = "p_large",
    desc_short = "Large",
    desc_long = "Large and in charge.",
    TEN = {'actor','addsub',1},
    SPD = {'actor','addsub',-2},
    overwrites = {"p_slim"}
  },

  p_pooreyesight = {
    name = "p_pooreyesight",
    desc_short = "Poor Eyesight",
    desc_long = "PLACEHOLDER",
    ACU = {'actor','addsub',-2},
    overwrites = {"p_eagleeyed"}
  },

  p_sharpeyed = {
    name = "p_sharpeyed",
    desc_short = "Sharpeyed",
    desc_long = "PLACEHOLDER",
    ACU = {'actor','addsub',2},
    overwrites = {"p_pooreyesight"}
  },
}

--Test.ParseEffectList()
--Test.BuildEffect(char_personalities.base,char_personalities.p_proud)
--Test.OverwriteEffect()