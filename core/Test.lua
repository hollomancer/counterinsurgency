--# Test.lua
--# Tests the shit out of things

Test = {}

function Test.ParseEffect() -- gimme some output!
  local a = 0
  
  local required_effects = {
    "name",
    "desc_short",
    "desc_long",
    "potatoes"
    }
  
  print("### TEST: Parse Personality Effects")
  for e_name,e_property in pairs(list) do
    
    for e_property,e_value in pairs(e_property) do
      if type(e_value)~="table"
        and type(e_value)~="boolean"
        and string.find(e_value,"PLACEHOLDER") ~= nil
        and e_name ~= "p_base" then
        print("!!! Warning: Effect " .. e_name .. " contains placeholder text on property " .. e_property .. ".")
        a = a + 1
      end
    end
  
    if table.haskey(list[e_name],"desc_short") == false
      and e_name ~= "p_base"
      then
       print("!!! Warning: Effect " .. e_name .. " is missing the desc_short property.")
       a = a + 1
    end
  end
  print("!!! " .. a .. " ERRORS FOUND")
  
  if a ~= 0 then
    print("### FAIL: Parse Personality Effects")
  else
    print("### PASS: Parse Personality Effects")
  end
  
end

function Test.BuildEffect(effect_base,target_effect)
  local a = 0
  
  print("### TEST: Build Personality Effect")
  
  local test_effect = Effect:clone()
  local added_effect = test_effect:AddEffect(effect_base,target_effect)
  
  for k,v in pairs(added_effect) do
    -- print(k,v)
    if type(v)~="table" and type(v)~="boolean" and
      string.find(v,"PLACEHOLDER") ~= nil 
      then print("!!! Warning: " .. k .. " contains placeholder text.")
      a = a + 1
    end
  end
  
  if a ~= 0 then
    print("### FAIL: Parse Personality Effects")
  else
    print("### PASS: Parse Personality Effects")
  end
  
end

function Test.OverwriteEffect()
  --[[
  print("### START TEST: Overwrite a Contradictory Effect ###")
  
  
  print("### END TEST: Overwrite a Contradictory Effect ###")
  ]]
end