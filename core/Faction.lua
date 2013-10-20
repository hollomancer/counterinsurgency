--[[

What needs to go into a faction?

]]

require( "core/Actor" )

Faction = Actor:clone()

Faction.name = "NO_FACTION_NAME"
Faction.type = "NO_FACTION_TYPE"
Faction.effects = {}
Faction.relations = {}
Faction.strength = 50
Faction.members = {}

print(Faction.name)