require( "core/Utils" )
require( "core/Actor" )

Char = Actor:clone()

function newChar(new_char,char_type)
  local new_char = Char:clone()
  local char = {}
  local effects = {}
  local personality = {}
  local background = {}
  local stats = {}
  
  math.randomseed(os.time())
  
  local function initVITALS(points,char)
    local VIG = 0
    local INT = 0
    local TEN = 0
    local ACU = 0
    local LIB = 0
    local SPD = 0
  
    for i = 1,points do
      
      local b = math.random(0,6)
      if b > 5 and VIG <= 65 and points > 0 then
        VIG = VIG + 1
        points = points - 1
      elseif b > 4 and INT <= 65 and points > 0 then
        INT = INT + 1
        points = points - 1
      elseif b > 3 and TEN <= 65 and points > 0 then
        TEN = TEN + 1
        points = points - 1
      elseif b > 2 and ACU <= 65 and points > 0 then
        ACU = ACU + 1
        points = points - 1
      elseif b > 1 and LIB <= 65 and points > 0 then
        LIB = LIB + 1
        points = points - 1
      elseif b > 0 and SPD <= 65 and points > 0 then
        SPD = SPD + 1
        points = points - 1
      end
      
    end
      
    local VITALS = {
      base_VIG = VIG,
      base_INT = INT,
      base_TEN = TEN,
      base_ACU = ACU,
      base_LIB = LIB,
      base_SPD = SPD}
    return VITALS
  end

  local function initBackground()
    local b = {}
    
    local a = math.random(0,8)
    if a == 0 then 
      b["b_regular"] = true
      b["b_engineer"] = true
    elseif a == 1 then 
      b["b_regular"] = true
      b["b_infantry"] = true
    elseif a == 2 then 
      b["b_regular"] = true
      b["b_armor"] = true
    elseif a == 3 then 
      b["b_regular"] = true
      b["b_fires"] = true  
    elseif a == 4 then 
      b["b_regular"] = true
      b["b_logistics"] = true  
    elseif a == 5 then
      b["b_militia"] = true
      b["b_engineer"] = true  
    elseif a == 6 then
      b["b_militia"] = true
      b["b_logistics"] = true  
    elseif a == 7 then
      b["b_militia"] = true
      b["b_academic"] = true  
    elseif a == 8 then
      b["b_militia"] = true
      b["b_police"] = true  
    end

    return b
  end
  
  -- faction-specific information
  if char_type == "isfk" then
    stats.age = math.random(17,45)
    total_points = math.random(300,300+stats.age)
    --background[k] = CreateEffect(k)
    elseif char_type == "ln" then
      stats.age = math.random(14,64)
      total_points = math.random(250,250+stats.age)
  end
  if stats.age <= 22 then
    background["b_young"] = CreateEffect("b_young")
    elseif stats.age > 50 and char_type == "ln" then
      background["b_elder"] = CreateEffect("b_elder")
    elseif stats.age > 39 and char_type == "isfk" then
      background["b_veteran"] = CreateEffect("b_veteran")
    elseif stats.age > 33 and char_type == "isfk" then
      background["b_seasoned"] = CreateEffect("b_seasoned")
  end
  table.merge(background,effects)
        
  char.stats = stats
  
  -- since backgrounds are more tightly associated with each other, this old functionality is actually better for our needs
  if char_type == "isfk" then
    for k,v in pairs(initBackground()) do background[k] = v end
    for k,v in pairs(background) do
      if v == true then
        require( "data/effects/char_backgrounds" )
        assert(char_backgrounds[k],"Attempting to read an unknown effect (or effect was nil)") -- make sure the newChar process uses effects that actually exist
        background[k] = CreateEffect(k)
      end
    end
    table.merge(background,effects)
  end
  
  -- wow, this is ugly. but it worked. convert the list of char_personalities into an array.
  require( "data/effects/char_personalities" )
  local q = {}
  for k,v in pairs(char_personalities) do
    if k ~= "base" then
      table.insert(q,char_personalities[k]["name"])
    end
  end
  
  -- now that we've created an array, pick a few personalities and create effects out of them.
  local q1 = {}
  local num_personalities = math.random(2,5)
  for i = 1,num_personalities do q1[i] = q[math.random(#q)] end
  for k,v in pairs(q1) do
    if v ~= type("table") then
    personality[v] = CreateEffect(v)
      -- don't forget to eliminate contradictory effects. TODO: make this a function, this is something that needs to be checked in various places
      if personality[v].overwrites ~= nil then 
        local overwrite_table = personality[v].overwrites
        for k,v in pairs(overwrite_table) do
          personality[v] = nil
        end
      end
    end
  end
  table.merge(personality,effects)
  
  -- add basic stats
  for k,v in pairs(initVITALS(total_points,char)) do stats[k] = v end
  
  char.effects = effects
  char.faction = char_type
  
  table.merge(char,new_char)
  return new_char
end

function Char:CalcVITALS()
  self:CalcStat("VIG")
  self:CalcStat("INT")
  self:CalcStat("TEN")
  self:CalcStat("ACU")
  self:CalcStat("LIB")
  self:CalcStat("SPD")
end

require "core/Test"

Test.CharGenISFK()
Test.CharGenLN()