--[[ Data.lua
save/load, consolidates game state for serialization
]]
module(...,package.seeall)

local filename = ("Save_"..os.date("%d%H%M%b%y")) -- TODO: make filenames more descriptive w/ current game state
local CurrentState = 0 -- TEMP

function Data.writeSave()
  if love.filesystem.exists(filename) then 
    error("File already exists.")
    else assert(love.filesystem.write(filename,CurrentState),"Attempt to save failed.") end
  end

function Data.loadSave()
end

