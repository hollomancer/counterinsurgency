<<<<<<< HEAD
--require "tester"
=======
require "tester"

require "Data"
>>>>>>> origin/master
require "Shell"
 
function love.load() -- this is the first thing that happens when you load the game!
	SplashScreenImage = love.graphics.newImage("/img/splashscreen.png")
	if arg[#arg] == "-debug" then require("mobdebug").start() end -- activates the mobile debugger in ZeroBrane
--	local font = love.graphics.newfont("pix.ttf", 36)
--	love.graphics.setFont(font)
end

function love.update(dt)
<<<<<<< HEAD
  Shell:update(dt)
=======
	Shell.ControllerState() --keyboard, mouse
	Shell.RestrictState() --determine disabled input actions
	--integrate player behavior
	Director.WorldUpdate()
		--determine areas requiring update
		--grab passive elements and sort according to relevance
		--apply update to passive elements
		--grab procedural elements and sort into relevance
		--calculate restrictions and decisions for those elements
		--apply update to AI elements
>>>>>>> origin/master
end

function love.draw()-- all functions that call on love.graphics must live here
  Shell:draw()
end

Say()
