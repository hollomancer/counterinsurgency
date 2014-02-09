function love.load() -- this is the first thing that happens when you load the game!
  math.randomseed(os.time())
	if arg[#arg] == "-debug" then require("mobdebug").start() end -- activates the mobile debugger in ZeroBrane
end

require 'core/Controls'
require 'core/State'      
--debug
Game = State

function love.update(dt)
  --Poll:Data()
  Game:update(dt)

end

function love.draw()-- all functions that call on love.graphics must live here
  Game:draw()
end

--[[
function love.focus(f)
  if not f then
    print("Lost focus on window")
  else
    print("Gained focus on window")
  end
end
]]--

