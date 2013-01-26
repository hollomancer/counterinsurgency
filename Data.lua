--[[ Data.lua
save/load, consolidates game state for serialization
]]
module(...,package.seeall)

local filename = ("Save_"..os.date("%d%H%M%b%y")) -- TODO: make filenames more descriptive w/ current game state
local CurrentState = 0 -- TEMP

function Data.NewState(x)
  if love.filesystem.exists(filename) then 
    error("File already exists.")
    else assert(love.filesystem.write(filename,CurrentState),"Attempt to save failed.") end
  end

function Data.DeleteState(x)
  -- TODO: user needs to be able to specify the filename
  assert(love.filesystem.write(filename,CurrentState),"Attempt to delete save failed.")
end

