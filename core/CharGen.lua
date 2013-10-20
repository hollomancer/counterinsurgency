math.randomseed(os.time())

local function initPersonality(numPersonalities)
  local p = {}
  for i = 1,numPersonalities do
    local a = math.random(0,7)
    if a == 0 and p["p_mildmannered"] ~= true then
       p["p_aggressive"] = true
     elseif a == 1 and p["p_aggressive"] ~= true then
       p["p_mildmannered"] = true
     elseif a == 2 and p["p_intellectual"] ~= true then
       p["p_simpleminded"] = true
     elseif a == 3 and p["p_simpleminded"] ~= true then
       p["p_intellectual"] = true
     elseif a == 4 and p["p_fat"] ~= true then
       p["p_athletic"] = true
     elseif a == 5 and p["p_athletic"] ~= true then
       p["p_fat"] = true
     elseif a == 6 and p["p_rebellious"] ~= true then
       p["p_teamplayer"] = true
     elseif a == 7 and p["p_teamplayer"] ~= true then
       p["p_rebellious"] = true
     end     
    end   
  return p 
end

local function initVITALS(points,char)
  local VIG = 1
  local INT = 1
  local TEN = 1
  local ACU = 1
  local LOY = 1
  local SPD = 1
  
  for i = 1,points do
    
    local b = math.random(0,1)
    if char["p_mildmannered"] == true and VIG >= 3 then --do nothing
    elseif char["p_aggressive"] == true and points > 0 then
      VIG = VIG + 1
      points = points - 1
    elseif b > 0.5 and VIG <= 7 and points > 0 then
      VIG = VIG + 1
      points = points - 1
    end
      
    local b = math.random(0,1)
    if char["p_simpleminded"] == true and INT >= 3 then --do nothing
    elseif char["p_intellectual"] == true and points > 0 then
      INT = INT + 1
      points = points - 1
    elseif b > 0.5 and INT <=7 and points > 0 then
      INT = INT + 1
      points = points - 1
    end
      
    local b = math.random(0,1)
    if char["p_fat"] == true and TEN >= 3 then --do nothing
    elseif char["p_athletic"] == true and points > 0 then
      TEN = TEN + 1
      points = points - 1
    elseif b > 0.5 and TEN <=7 and points > 0 then
       TEN = TEN + 1
       points = points - 1
    end
      
    local b = math.random(0,1)
    if b > 0.5 and ACU <=7 and points > 0 then
      ACU = ACU + 1
      points = points - 1
    end
      
    local b = math.random(0,1)
    if char["p_rebellious"] == true and LOY >= 3 then --do nothing
    elseif char["p_teamplayer"] == true and points > 0 then
      LOY = LOY + 1
      points = points - 1
    elseif b > 0.5 and LOY <=7 and points > 0 then
       LOY = LOY + 1
      points = points - 1
    end
      
    local b = math.random(0,1)
    if b > 0.5 and SPD <=7 and points > 0 then
      SPD = SPD + 1
      points = points - 1
    end
      
  end
    
  local VITALS = {
    base_VIG = VIG,
    base_INT = INT,
    base_TEN = TEN,
    base_ACU = ACU,
    base_LOY = LOY,
    base_SPD = SPD}
  return VITALS
end

local function initBackground()
  local b = {}
  
  local a = math.random(0,6)
  if a == 0 then 
    b["b_maneuver"] = true
  elseif a == 1 then 
    b["b_fires"] = true
  elseif a == 2 then 
    b["b_armor"] = true
  elseif a == 3 then 
    b["b_engineer"] = true  
  elseif a == 4 then 
    b["b_academic"] = true  
  elseif a == 5 then 
    b["b_support"] = true  
  elseif a == 6 then
    b["b_militia"] = true
  end

  return b
end

local function genChar(pointlow,pointhigh)
  local total_points = math.random(pointlow,pointhigh)
  local char = {}
  for k,v in pairs(initPersonality(2)) do char[k] = v end
  for k,v in pairs(initVITALS(total_points,char)) do char[k] = v end
  for k,v in pairs(initBackground()) do char[k] = v end
  return char
end

char_tom = genChar(12,20)
char_dick = genChar(12,20)
char_harry = genChar(12,20)

char_tom["s_marksmanship"] = true

for k,v in pairs(char_tom) do print(k,v) end