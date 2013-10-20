--# table.merge
--# merges two tables together

function table.merge(origin,target)
  for k,v in pairs(origin) do target[k] = v end
end

function table.haskey(table, element)
  for _, value in pairs(table) do
    if _ == element then
      return true
    end
  end
  return false
end