--[[ Actor.lua
What does this module need to do?
1) generate states for actors
2) process reaction checks
3) read/write actor data from DataTerp
]]

local Prototype = require( "core/extPrototype" )

Actor = Prototype{
  default = Prototype.assignment_copy,
  table = Prototype.shallow_copy,
  use_Prototype_delegation = true,
}

Actor.name = "NO_ACTOR_NAME"