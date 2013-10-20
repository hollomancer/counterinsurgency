keyp = {}

function love.keypressed(k)
  print("pressed", k)
  keyp[k] = 0
end

function love.keyreleased(k)
  keyp[k] = nil
end 

function love.mousepressed(x, y, button)
   if button == "l" then
      print("leftmouse pressed at "..x.." "..y)
   end
   if button == "r" then
      print("rightmouse pressed at "..x.." "..y)
   end
end

function love.mousereleased(x, y, button)
   if button == "l" then
      print("leftmouse released at "..x.." "..y)
   end
   if button == "r" then
      print("rightmouse released at "..x.." "..y)
   end
end