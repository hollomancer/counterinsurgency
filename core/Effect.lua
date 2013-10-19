local Prototype = require( "core/extPrototype" )

local Object = Prototype{
  default = Prototype.no_copy,
  table = Prototype.shallow_copy,
  use_Prototype_delegation = true,
}

local Effect = Object:clone()
Effect.name = "NO_EFFECT_NAME"

function Effect:say()
  print( "Hi, I'm " .. self.name )
end

function Effect:getName()
  return self.name
end

Effect:say()
local alice = Effect:clone()
alice.name = "Alice"
alice:say()

print(Effect:getName())