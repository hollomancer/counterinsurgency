--# table.merge
--# merges two tables together

function table.merge(origin,target)
  for k,v in pairs(origin) do target[k] = v end
end