require "core/Utils"

local function test() -- gimme some output!
  print("### START TEST CHARMOD ###")
    function PrintRandomString(a)
      local b = math.random(1,#a)
      print(a[b])
    end

    require "data/strings"
    PrintRandomString(Quotes)

    ReadCharModData("data/char_mod_list.lua")
    ReadCharModData("data/reaction_mod_list.lua")

    print (CharMod.w_ethos.desc_short)
    print (CharMod.disgruntled.desc_short)
    print (CharMod.disgruntled.expire)
      
  print("### END TEST CHARMOD ###")
end

CharMod = {}

--# base; all status effects inherit these parameters
CharMod.base = {
  desc_short = "PLACEHOLDER",
  desc_long = "PLACEHOLDER",
  img = placeholder,
  priority = 3,
  stackable = false,
  expire = 0,
  expire_announce = false
}
CharMod.mt = {}

-- inheritance
function CharMod.new (o)
  setmetatable(o, CharMod.mt)
  return o
end

CharMod.mt.__index = CharMod.base

function ReadCharModData(a)
  --read character status effect entries
  dofile(a)
  for k,v in pairs(list)
    do
     CharMod[k] = CharMod.new{}
     table.merge(CharMod[k],v)
  end
end

test()