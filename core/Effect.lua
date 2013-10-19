local prototype = require( "prototype" )

local Object = prototype{
  default = prototype.no_copy,
  table = prototype.shallow_copy,
  use_prototype_delegation = true,
}

local Effect = Object:clone()
Effect.name = "undefined_name"

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