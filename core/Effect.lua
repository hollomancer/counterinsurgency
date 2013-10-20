local Prototype = require( "core/extPrototype" )

Effect = Prototype{
  default = Prototype.no_copy,
  table = Prototype.shallow_copy,
  use_prototype_delegation = true,
}

Effect.name = "NO_EFFECT_NAME"

function Effect:AddEffect(base_effect,target_effect)
  local built_effect = {}
  table.merge(base_effect,built_effect)
  table.merge(target_effect,built_effect)
  
  --[[ method for dealing with contradictory status effects
  if built_effect[overwrites] ~= nil then
    local overwrite_table = built_effect[overwrites]
    if built_effect[overwrites] == self[overwrites]
      then self[overwrites] = nil
    end
  end
  ]]
  
  return built_effect
end

test = Effect:clone()
