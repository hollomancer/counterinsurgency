require "Shell"

test = {}

function test:update(dt)
  Shell:update(dt)
	--Shell.ControllerState() --keyboard, mouse
	--Shell.RestrictState() --determine disabled input actions
	--integrate player behavior
	--Director.WorldUpdate()
		--determine areas requiring update
		--grab passive elements and sort according to relevance
		--apply update to passive elements
		--grab procedural elements and sort into relevance
		--calculate restrictions and decisions for those elements
		--apply update to AI elements
end

function test:draw()
  Shell:draw()
end

Say("TEST PHRASE 12")
Say("TEST PHRASE 2")
Say("TEST PHRASE 3")