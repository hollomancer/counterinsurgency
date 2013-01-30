require "CharMod"

function PrintRandomString(a)
  local b = math.random(1,#a)
  print(a[b])
end

require "data/strings"
PrintRandomString(Quotes)

--test stuff
ReadCharModData("data/char_mod_list.lua")
ReadCharModData("data/reaction_mod_list.lua")

print (CharMod.w_ethos.desc_short)
print (CharMod.disgruntled.desc_short)
print (CharMod.disgruntled.expire)