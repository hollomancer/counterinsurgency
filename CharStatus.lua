require "utils"

CharStatus = {}

--# base; all status effects inherit these parameters
CharStatus.base = {
  desc_short = "PLACEHOLDER",
  desc_long = "PLACEHOLDER",
  img = placeholder,
  priority = 3,
  stackable = false,
  expire = 0,
  expire_announce = false
}
CharStatus.mt = {}

-- inheritance
function CharStatus.new (o)
  setmetatable(o, CharStatus.mt)
  return o
end

CharStatus.mt.__index = CharStatus.base

function ReadCharStatusData()
  --read scripted CharStatus entries
  dofile "data/char_status_list.lua"
  for k,v in pairs(char_status_list)
    do
     CharStatus[k] = CharStatus.new{}
     table.merge(CharStatus[k],v)
  end
end
  
ReadCharStatusData()

print (CharStatus.w_ethos.desc_short)
print (CharStatus.disgruntled.desc_short)
print (CharStatus.disgruntled.expire)