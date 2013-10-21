local Prototype = require( "core/extPrototype" )

Effect = Prototype{
  default = Prototype.no_copy,
  table = Prototype.shallow_copy,
  use_prototype_delegation = true,
}

Effect.name = "NO_EFFECT_NAME"
Effect.effects = {} --this should not be necessary and i need to find out how to get rid of it

function Effect:CreateEffect(effect)
  local new_effect = {}
  local base_effect = {}
  local built_effect = {}
  
  if string.sub(effect,1,2) == "p_" then
    require( "data/effects/char_personalities" )
    base_effect = char_personalities.base
    new_effect = char_personalities[effect]
  elseif string.sub(effect,1,2) == "b_" then
    require( "data/effects/char_backgrounds" )
    base_effect = char_backgrounds.base
    new_effect = char_backgrounds[effect]
  else
    assert(nil,"Effect not supported!")
  end
  
  table.merge(base_effect,built_effect)
  table.merge(new_effect,built_effect)

  return built_effect
end