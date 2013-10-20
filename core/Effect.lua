local Prototype = require( "core/extPrototype" )

Effect = Prototype{
  default = Prototype.no_copy,
  table = Prototype.shallow_copy,
  use_Prototype_delegation = true,
}

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

print(Effect:getName())