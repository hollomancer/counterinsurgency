function Char:EmptyInventory()
  for i = 1,12 do
    self.inventory[i] = {}
  end
  for k,v in pairs(char.inventory[i]) do
    for i = 1,2 do
      self.inventory[k][i] = false
    end
  end
end

function Char:GetInventoryItem(x,y)
  return self.inventory[x][y]
end

function Char:GiveInventoryItem(x,y,name)
  
end

function Char:RemoveInventoryItem(x,y)
  
end
