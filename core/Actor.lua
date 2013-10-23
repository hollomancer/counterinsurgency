--# Actor.lua
--# characters and factions share the methods and data within, as a base prototype.

local Prototype = require( "core/extPrototype" )

Actor = Prototype{
  default = Prototype.assignment_copy,
  table = Prototype.shallow_copy,
  use_Prototype_delegation = true,
}

Actor.name = "PLACEHOLDER"
Actor.desc_short = "PLACEHOLDER"
Actor.desc_long = "PLACEHOLDER"
Actor.effects = {}
Actor.stats = {}
Actor.relations = {}
Actor.groups = {}

function Actor:CalcStat(stat_string)
  local base = "base_" .. stat_string
  local current = self.stats[base]
  local finished_stat = "current_" .. stat_string
  
  for k,v in pairs(self.effects) do
    if type(v) == "table" then
      for property,modifier in pairs(v) do
        if property == stat_string then
          if modifier[2] == "+"  or "-" then
          current = current + modifier[3]
          elseif modifier[2] == "*" then
          current = current * modifier[3]
          elseif modifier[2] == "/" then
          current = current * modifier[3]
          end
        end
      end
    end
  end
  
  self.stats[finished_stat] = current
end  


function Actor:AddEffect(effect_string)
  local effect = CreateEffect(effect_string)
  self.effects[effect_string] = {} -- this will need to be changed when we start stacking effects
  
  --overwrite flag check
  if effect.overwrites ~= nil then 
    local overwrite_table = effect.overwrites
    for k,v in pairs(overwrite_table) do
      self.effects[v] = nil
    end
  end
  
  table.merge(effect,self.effects[effect_string])
  self:CalcVITALS()
end


function CreateEffect(effect)
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
  elseif effect ~= type("string") then
    assert(nil,"CreateEffect did not receive a string.")
  else
    assert(nil,"Effect not supported!")
  end
  
  table.merge(base_effect,built_effect)
  table.merge(new_effect,built_effect)

  return built_effect
end


function Actor:Rel(target)
  local reaction = 0
  
  for k,v in pairs(self.effects) do
    if type(v) == "table" then
      for property,condition in pairs(v) do
        if property == "relation" then       
          for condition,modifier in pairs(v[property]) do
            if target.effects[condition] ~= nil and condition == target.effects[condition].name then
              if modifier[2] == "+"  or "-" then
                reaction = reaction + modifier[3]
                elseif modifier[2] == "*" then
                reaction = reaction * modifier[3]
                elseif modifier[2] == "/" then
                reaction = reaction * modifier[3]
              end
            end
          end
        end
      end
    end
  end
  
  return reaction
  
end