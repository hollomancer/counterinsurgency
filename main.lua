keyp = {}
Game = {State = true}
      
function love.load() -- this is the first thing that happens when you load the game!
  math.randomseed(os.time())
	if arg[#arg] == "-debug" then require("mobdebug").start() end -- activates the mobile debugger in ZeroBrane
end

function love.update(dt)
  for k,v in pairs(Game) do
      if v == true then
        require(k)
        local a = _G[k]
        a:update(dt)
      end
    end
end

function love.draw()-- all functions that call on love.graphics must live here
  for k,v in pairs(Game) do
    if v == true then
      require(k)
      local a = k..":draw()"
      loadstring(a)() end
  end
end

function love.keypressed(k)
  print("pressed", k)
  keyp[k] = 0
end

function love.keyreleased(k)
  keyp[k] = nil
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

