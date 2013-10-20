--# Test.lua
--# Tests the shit out of things

Test = {}

function Test.ParseEffect() -- gimme some output!
  local a = 0
  
  print("### TEST: Parse Personality Effects")
  for k,v in pairs(list) do
    local b = k
      for k,v in pairs(v) do
        -- print(b,k,v)
        if type(v)~="table" and type(v)~="boolean" and
          string.find(v,"PLACEHOLDER") ~= nil 
          then print("!!! Warning: " .. b .. " " .. k .. " contains placeholder text.")
          a = a + 1
        end
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