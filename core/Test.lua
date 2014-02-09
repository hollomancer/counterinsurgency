--# Test.lua
--# Tests the shit out of things

Test = {}

function Test.ParseEffectList() -- gimme some output!
  local a = 0
  
  local required_properties = {
    "name",
    "desc_short",
    "desc_long",
    }
  
  print("### TEST: Parse Personality Effects")
  for e_name,e_property in pairs(char_personalities) do
    
    for e_property,e_value in pairs(e_property) do
      if type(e_value)~="table"
        and type(e_value)~="boolean"
        and string.find(e_value,"PLACEHOLDER") ~= nil
        and e_name ~= "p_base" then
        print("!!! Warning: Effect " .. e_name .. " contains placeholder text on property " .. e_property .. ".")
        a = a + 1
      end
    end
    
  for key,value in pairs(required_properties) do
    if table.haskey(char_personalities[e_name],value) == false
      and e_name ~= "p_base"
      then
       print("!!! Warning: Effect " .. e_name .. " is missing the " .. value .. " property.")
       a = a + 1
    end
  end
  end
  print("!!! " .. a .. " errors found.")
  
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


function Test.CharGenISFK()
  print("### TEST: Generate ISFK Character ###")
  test_char1 = newChar(test_char1,"isfk")
  test_char1.name = "test_char1"
  test_char1.desc_short = "Test Character 1"
  test_char1.desc_long = "I am a test character 1."

  for k,v in pairsByKeys(test_char1) do print (k,v) end
  test_char1:CalcVITALS()
  test_char1:CalcReputation()
  print("--- Groups ---")
  for k,v in pairsByKeys(test_char1.groups) do print (v) end
  print("--- Effects ---")
--  test_char1:AddEffect("p_diligent")
  for k,v in pairsByKeys(test_char1.effects) do print (k,v) end
  print("--- Stats ---")
  for k,v in pairsByKeys(test_char1.stats) do print (k,v) end
  
  print("### END: Generate ISFK Character ###")
end

function Test.CharGenLN()
  print("### TEST: Generate LN Character ###")
  test_char2 = newChar(test_char2,"ln")
  test_char2.name = "test_char2"
  test_char2.desc_short = "Test Character 2"
  test_char2.desc_long = "I am a test character 2."
  
  for k,v in pairsByKeys(test_char2) do print (k,v) end
  test_char2:CalcVITALS()
  test_char2:CalcStat("morale")
  test_char1:CalcReputation()
  print("--- Groups ---")
  for k,v in pairsByKeys(test_char2.groups) do print (v) end
  print("--- Effects ---")
--  test_char2:AddEffect("p_lazy")
  for k,v in pairsByKeys(test_char2.effects) do print (k,v) end
  print("--- Stats ---")
  for k,v in pairsByKeys(test_char2.stats) do print (k,v) end
  print("TEST REL: two rel one", test_char2:Rel(test_char1))
  print("TEST REL: one rel two", test_char1:Rel(test_char2))
  print("### END: Generate LN Character ###")
end