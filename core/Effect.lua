local Prototype = require( "core/extPrototype" )

Effect = Prototype{
  default = Prototype.no_copy,
  table = Prototype.shallow_copy,
  use_Prototype_delegation = true,
}

Effect.name = "NO_EFFECT_NAME"

function Effect:Build(base_effect,target_effect)
  local built_effect = {}
  table.merge(base_effect,built_effect)
  table.merge(target_effect,built_effect)
  
  return built_effect
end

