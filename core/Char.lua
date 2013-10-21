require( "core/Utils" )
require( "core/Actor" )
require( "core/Effect" )

Char = Actor:clone()
Char.name = "PLACEHOLDER"
Char.desc_short = "PLACEHOLDER"
Char.desc_long = "PLACEHOLDER"
Char.effects = {}

function Char:AddEffect(effect_string)
  local effect = Effect:CreateEffect(effect_string)
  self.effects[effect_string] = {} -- this will need to be changed when we start stacking effects
  
  --overwrite flag check
  if effect.overwrites ~= nil then 
    local overwrite_table = effect.overwrites
    for k,v in pairs(overwrite_table) do
      self.effects[v] = nil
    end
  end
  
  table.merge(effect,self.effects[effect_string])
  self.CalcVITALS()
end

-- function Char:CalcStat(stat) finish this late ri'm tired  
  
function Char:CalcVITALS() -- break this up into chunks
  local aVIG = self.effects.base_VIG
  local aINT = self.effects.base_INT
  local aTEN = self.effects.base_TEN
  local aACU = self.effects.base_ACU
  local aLIB = self.effects.base_LIB
  local aSPD = self.effects.base_SPD

  for k,v in pairs(self.effects) do
    if type(v) == "table" then
      for property,modifier in pairs(v) do
        if property == "VIG" then
          aVIG = aVIG + modifier
        elseif property == "INT" then
          aINT = aINT + modifier
        elseif property == "TEN" then
          aTEN = aTEN + modifier
        elseif property == "ACU" then
          aACU = aACU + modifier
        elseif property == "LIB" then
          aLIB = aLIB + modifier
        elseif property == "SPD" then
          aSPD = aSPD + modifier end
      end
    end
  end
  
  self.effects.current_VIG = aVIG
  self.effects.current_INT = aINT
  self.effects.current_TEN = aTEN
  self.effects.current_ACU = aACU
  self.effects.current_LIB = aLIB
  self.effects.current_SPD = aSPD
end

function newChar(new_char,char_type)
  math.randomseed(os.time())
  local new_char = Char:clone()
  local function initPersonality(numPersonalities)
    local p = {}
    for i = 1,numPersonalities do
      local a = math.random(0,7)
      
      if a == 0 and p["p_mildmannered"] ~= true then
         p["p_aggressive"] = true
       elseif a == 1 and p["p_aggressive"] ~= true then
         p["p_mildmannered"] = true
         
       elseif a == 2 and p["p_quickwitted"] ~= true then
         p["p_slowwitted"] = true
       elseif a == 3 and p["p_slowwitted"] ~= true then
         p["p_quickwitted"] = true
         
       elseif a == 4 and p["p_large"] ~= true then
         p["p_slim"] = true
       elseif a == 5 and p["p_slim"] ~= true then
         p["p_large"] = true
         
       elseif a == 6 and p["p_bold"] ~= true then
         p["p_cautious"] = true
       elseif a == 7 and p["p_cautious"] ~= true then
         p["p_bold"] = true
         
       end     
      end   
    return p 
  end

  local function initVITALS(points,char)
    local VIG = 0
    local INT = 0
    local TEN = 0
    local ACU = 0
    local LIB = 0
    local SPD = 0
  
  for i = 1,points do
    
    local b = math.random(0,1)
    if char["p_mildmannered"] == true and VIG >= 35 then --do nothing
    elseif char["p_aggressive"] == true and points > 0 and VIG <= 74 then
      VIG = VIG + 1
      points = points - 1
    elseif b > 0.1 and VIG <= 65 and points > 0 then
      VIG = VIG + 1
      points = points - 1
    end
      
    local b = math.random(0,1)
    if char["p_slowwitted"] == true and INT >= 35 then --do nothing
    elseif char["p_quickwitted"] == true and points > 0 and INT <= 74 then
      INT = INT + 1
      points = points - 1
    elseif b > 0.1 and INT <= 65 and points > 0 then
      INT = INT + 1
      points = points - 1
    end
      
    local b = math.random(0,1)
    if char["p_large"] == true and TEN >= 35 then --do nothing
    elseif char["p_slim"] == true and points > 0 and TEN <= 74 then
      TEN = TEN + 1
      points = points - 1
    elseif b > 0.1 and TEN <= 65 and points > 0 then
       TEN = TEN + 1
       points = points - 1
    end
      
    local b = math.random(0,1)
    if b > 0.5 and ACU <= 65 and points > 0 then
      ACU = ACU + 1
      points = points - 1
    end
      
    local b = math.random(0,1)
    if char["p_bold"] == true and LIB >= 35 then --do nothing
    elseif char["p_cautious"] == true and points > 0 and LIB <= 74 then
      LIB = LIB + 1
      points = points - 1
    elseif b > 0.1 and LIB <= 65 and points > 0 then
       LIB = LIB + 1
      points = points - 1
    end
      
    local b = math.random(0,1)
    if b > 0.1 and SPD <= 65 and points > 0 and SPD <= 74 then
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

  
  
  if char_type == "isfk" then
    total_points = math.random(200,300)
    elseif char_type == "ln" then
      total_points = math.random(150,250)
  end
  local char = {}
  local effects = {}
  local personality = {}
  local background = {}
  for k,v in pairs(initPersonality(3)) do personality[k] = v end
  for k,v in pairs(initVITALS(total_points,char)) do personality[k] = v end
  
  if char_type == "isfk" then
    for k,v in pairs(initBackground()) do background[k] = v end
    for k,v in pairs(background) do
      if v == true then
        require( "data/effects/char_backgrounds" )
        assert(char_backgrounds[k],"Attempting to read an unknown effect (or effect was nil)") -- make sure the newChar process uses effects that actually exist
        personality[k] = Effect:CreateEffect(k)
        end
    end
    table.merge(background,effects)
    
  end
  
  for k,v in pairs(personality) do
    if v == true then
      require( "data/effects/char_personalities" )
      assert(char_personalities[k],"Attempting to read an unknown effect (or effect was nil)") -- make sure the newChar process uses effects that actually exist
      personality[k] = Effect:CreateEffect(k) --this needs to activate the effect too...
    end
  end
  table.merge(personality,effects)
  
  char.effects = effects
  char.faction = char_type
  
  table.merge(char,new_char)
  return new_char
end

require "core/Test"

Test.CharGenISFK()
--Test.CharGenLN()