require( "core/Utils" )
require( "core/Actor" )

Char = Actor:clone()
Char.name = "PLACEHOLDER"
Char.desc_short = "PLACEHOLDER"
Char.desc_long = "PLACEHOLDER"
Char.effects = {}

local function newCharISFK(new_char)
  local new_char = Char:clone()
  dofile( "core/CharGen.lua" )
  table.merge(genChar(250,250),new_char)
  return new_char
end

local test_char1=newCharISFK()

for k,v in pairs(test_char1) do print (k,v) end
for k,v in pairs(test_char1.effects) do print (k,v) end