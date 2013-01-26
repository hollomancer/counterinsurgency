module(...,package.seeall)

function ReactionModifiers(a)
  dofile("ReactionModifiers.lua")
  return 
function ReactionModifier:GetName(target)
  return target.name
end

function tester.test()
	--love.graphics.draw(SplashScreenImage,10,10)
	--love.graphics.print(ReactionModifier:GetName(ReactionModifier),300,200)
  --if love.keyboard.isDown("up") then Data.NewState() end
end
