--[[ Shell.lua
1) display things
2) play audio
3) funnel game input into Director.lua
]]

Shell = {}

function Shell:draw()
-- local dialog_opened = true -- for testing

-- draws dialogue boxes
  if dialog_opened == true then 
    local msg = string.sub(dialog_message, 1, math.floor(dialog_length))
    love.graphics.setLineWidth(2)
    love.graphics.printf(msg,102,402,500)
    love.graphics.rectangle("line",100,400,500,100)
  end 
end

function Shell:update(dt)
  Shell:updateDialogue(dt)
end

function Shell:updateDialogue(dt)
    dialog_length = dialog_length + dialog_speed * dt 
  if dialog_length > #dialog_message then
    dialog_finished = true
    --Use this part to do things that need to happen when the text is finished. Like only allow the user
    --to move to the next dialog when the text is finished by checking for key presses and checking
    --whether the dialog is finished or not and if it is finished then exit it, and if not, speed the text
    --up to get to the end faster if you want.
  end
end


function Say(text,image,speed)
  dialog_message = text or "Say function \nlacks text argument!"
  dialog_image = image 
  dialog_speed = speed or "10"
  dialog_length = 0
  dialog_finished = false
  dialog_opened = true
end

function Choice(image,text1,text2,text3, ...)
     TalkImg = image
     Shell.Box()
     -- *decided*
     outcome = x
end

--  example
-- [[CHOICE]] game.choice["ChoiceName"] = 0 ]]
-- [[James]] local text1 = "Choice 1" ]]
-- [[James]] local text2 = "Choice 2" ]]
-- [[James]] local text3 = "Choice 3" ]]
-- Choice(jamesimg,text1,text2,text3)
-- if outcome = 1 ... etc