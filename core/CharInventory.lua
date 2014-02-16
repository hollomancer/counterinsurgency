--           potential inventory slots
-- (1)       [X][X][X][X] [X][X][X][X]
-- (2)       [X][X][X][X] [X][X][X][X]
-- (1) [X][X]                         [X][X]
-- (2) [X][X]                         [X][X]


function Char:InitInventory()
  self.inventory = {}
  for i = 1,12 do
    self.inventory[i] = {}
    for k,v in pairs(self.inventory[i]) do
      for i = 1,2 do
        self.inventory[k][i] = false
      end
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

function Char:SetCarrierType(carrier_type)
  if carrier_type == "shell" then
    for i = 1,2 do
      self.inventory[k][i] = true
    end
    elseif carrier_type == "halfshell" then
      self_inventory[4][1] = true
      self_inventory[5][1] = true
      self_inventory[6][1] = true
      self_inventory[7][1] = true
      self_inventory[8][1] = true
      self_inventory[9][1] = true
      self_inventory[4][2] = true
      self_inventory[5][2] = true
      self_inventory[6][2] = true
      self_inventory[7][2] = true
      self_inventory[8][2] = true
      self_inventory[9][2] = true
    elseif carrier_type == "standard" then
      self_inventory[5][1] = true
      self_inventory[6][1] = true
      self_inventory[7][1] = true
      self_inventory[8][1] = true
      self_inventory[4][2] = true
      self_inventory[5][2] = true
      self_inventory[6][2] = true
      self_inventory[7][2] = true
      self_inventory[8][2] = true
      self_inventory[9][2] = true
    elseif carrier_type == "plate" then
      self_inventory[5][1] = true
      self_inventory[6][1] = true
      self_inventory[7][1] = true
      self_inventory[8][1] = true
      self_inventory[5][2] = true
      self_inventory[6][2] = true
      self_inventory[7][2] = true
      self_inventory[8][2] = true
    elseif carrier_type == "web" then
      self_inventory[6][1] = true
      self_inventory[7][1] = true
      self_inventory[5][2] = true
      self_inventory[6][2] = true
      self_inventory[7][2] = true
      self_inventory[8][2] = true
    end
  end

function Char:SetCarrierPanelType(carrier_type)
  if carrier_type == "mini" then
    self_inventory[2][1] = true
    self_inventory[11][1] = true
    elseif carrier_type == "small" then
      self_inventory[2][1] = true
      self_inventory[2][2] = true
      self_inventory[11][1] = true
      self_inventory[11][2] = true
    elseif carrier_type == "drop" then
      self_inventory[1][1] = true
      self_inventory[2][1] = true
      self_inventory[2][2] = true
      self_inventory[11][1] = true
      self_inventory[11][2] = true
      self_inventory[12][1] = true
    end
  end
  