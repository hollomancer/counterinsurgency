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

function Actor:Modifier(array,output)
  
  if array[2] == "+"  or "-" or "+-" or "addsub" then
    output = output + array[3]
    elseif array[2] == "*" or "mult" then
    output = output * array[3]
    elseif modifier[2] == "/" or "div" then
    output = output / array[3]
  else
    assert(nil,"Invalid modifier type")
  end
  
  return output
  
end      

function Actor:CalcStat(stat_string)
  local base = "base_" .. stat_string
  local current = self.stats[base]
  local finished_stat = "current_" .. stat_string
  
  for k,v in pairs(self.effects) do
    if type(v) == "table" then
      for property,modifier in pairs(v) do
        if property == stat_string then
          current = self:Modifier(modifier,current)
          elseif property == "reputation" and string.sub(stat_string,1,4) == "rep_" then
          current = self:Modifier(modifier,current)
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

function Actor:RemoveEffect(effect_string)
  self.effects[effect_string] = nil
end

function Actor:Rel(target)
  
  local reaction = 0

  for k,v in pairs(self.effects) do
    if type(v) == "table" then
      for property,condition in pairs(v) do
        if property == "relation" then       
          for condition,modifier in pairs(v[property]) do
            if target.effects[condition] ~= nil and condition == target.effects[condition].name then
              reaction = self:Modifier(modifier,reaction)
            end
          end
        end
      end
    end
  end
  
  -- generalize the following at some point
  
  if table.hasval(target.groups,"ln") == true then
    self:CalcStat("rep_LN")
    reaction = reaction + self.stats.current_rep_LN
    end
  
  if table.hasval(target.groups,"isfk") == true then
    self:CalcStat("rep_ISFK")
    reaction = reaction + self.stats.current_rep_ISFK
    end
  
  return reaction
  
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
  elseif string.sub(effect,1,3) == "sk_" then
    require( "data/effects/char_skills" )
    base_effect = char_skills.base
    new_effect = char_skills[effect]
  elseif effect ~= type("string") then
    assert(nil,"CreateEffect did not receive a string (received " .. effect .. ")")
  else
    assert(nil,"Effect not supported!")
  end
  
  table.merge(base_effect,built_effect)
  table.merge(new_effect,built_effect)

  return built_effect
end

function AddGroupEffect(group,effect_string)
  for k,v in pairs(all_chars) do
    for char,target in pairs(v) do
      for blah, blah2 in pairs(v.groups) do
        if blah2 == group then
          v:AddEffect(effect_string)
        end
       end
    end
  end
end

function RemoveGroupEffect(group,effect_string)
  for k,v in pairs(all_chars) do
    for char,target in pairs(v) do
      for blah, blah2 in pairs(v.groups) do
        if blah2 == group then
          v:RemoveEffect(effect_string)
        end
       end
    end
  end
end