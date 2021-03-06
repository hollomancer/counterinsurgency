--# char_relations.lua
--# Relation effects for characters.

char_personalities = {

  base = {
    name = "PLACEHOLDER",
    desc_short = "PLACEHOLDER",
    desc_long = "PLACEHOLDER",
    targets = {
      }
  },

  rc_curious = {
    name = "rc_curious",
    desc_short = "Curious",
    desc_long = "Hasn't made their mind up about you...",
    -- +5 reaction on first contact
  },

  rc_unfamiliar = {
    name = "rc_unfamiliar",
    desc_short = "Unfamiliar",
    desc_long = "Hasn't made their mind up about you...",
    -- -15 reaction on first contact
  },

  rc_friends = { -- need to figure out a good way to do paired effects...
    name = "rc_friends",
    desc_short = "Friends",
    relation = {
      rc_friends = {'actor','+',20},
    }
  },
    
  rc_grudge = {
    name = "rc_grudge",
    desc_short = "Grudge",
    relation = {
      rc_grudge = {'actor','-',30},
    }
  },

}

--[[ReactionModifiers.lua

L.N. EQUIPMENT REACTION MODIFIERS
Trusted (Lightly Armored); Your lack of armor shows trust in them.
Trusted (Unarmed); Your lack of a weapon shows trust in them.
Dehumanized (Heavily Armored); Your armor dehumanizes your appearance.
Dehumanized (High Tech); Your vastly superior technology dehumanizes your appearance.
Threatened (Armed); Your weapons threaten them.
Threatened (Heavily Armed); Your heavy armed appearance threatens them.

MILITARY EQUIPMENT REACTION MODIFIERS
Disrespected (Unarmed); Your lack of a visible weapon is perceived as naivete.
Disrespected (Unarmored); Your lack of protective gear is perceived as naivete.
Respected (Armed): This character respects your armed appearance.
Respected (Heavily Armed): This character respects your heavily armed appearance.
Respected (Armored): This character respects your armored appearance.
Respected (Heavily Armored): This character respects your armored appearance.

Xenophobic: Dislikes foreigners.
Xenophilic: Interested in foreigners.

Curious: Hasn't made up their mind about you...

Cultural Bonus()
Cultural Penalty()

Reputation Bonus()
Reputation Penalty()

External Event Bonus()
External Event Penalty()

Outranks You
Outranked: Knows
]]
