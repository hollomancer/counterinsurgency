--[[

What needs to go into a faction?

]]

require( "core/Actor" )

Faction = Actor:clone()

Faction.name = "PLACEHOLDER"
Faction.type = "PLACEHOLDER"
Faction.members = {} -- this only copies the STRING of the char, not the char table itself. be careful