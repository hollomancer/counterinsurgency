--[[ Shell.lua
1) display things
2) play audio
3) funnel game input into Director.lua
]]

Shell = {}
local bufferSay = {}

function Shell:draw()
-- draws dialogue boxes
  if dialog_opened == true then 
    local msg = string.sub(dialog_message, 1, math.floor(dialog_length))
    love.graphics.setLineWidth(3)
    love.graphics.printf(msg,104,403,500)
    love.graphics.rectangle("line",100,400,500,100)
  end 
end

function Shell:update(dt)
  if dialog_opened == true then Shell:updateDialogue(dt) end
end

function Shell:updateDialogue(dt)
    dialog_length = dialog_length + dialog_speed * dt
  if dialog_length > #dialog_message then
    if keyp[" "] == 0 then
      dialog_opened = false
      table.remove(bufferSay,1)
      table.remove(bufferSay,1)
      table.remove(bufferSay,1)
      if bufferSay[1] ~= nil then Shell:loadDialogue()
      end
    end
  end
end
  
-- Say() brings up a dialogue box with character image, if applicable.

function Shell:loadDialogue()
  dialog_message = bufferSay[1]
  dialog_image = bufferSay[2]
  dialog_speed = bufferSay[3]
  dialog_length = 0
  dialog_opened = true
end

function Say(text,image,speed)
  if text == nil then table.insert(bufferSay,"Say function lacks text argument!")
    else table.insert(bufferSay,text) end
  if image == nil then table.insert(bufferSay,"img/missing.png")
    else table.insert(bufferSay,image) end
  if speed == nil then table.insert(bufferSay,10)
    else table.insert(bufferSay,speed) end
  Shell:loadDialogue()
end

function Choice(image,text1,text2,text3, ...)
     TalkImg = image
     Shell.Box()
     -- *decided*tab
     outcome = x
end

function Shell:randomQuote()
  require "data/strings"
  local b = math.random(1,#Quotes)
  return(Quotes[b])
end

--  example
-- [[CHOICE]] game.choice["ChoiceName"] = 0 ]]
-- [[James]] local text1 = "Choice 1" ]]
-- [[James]] local text2 = "Choice 2" ]]
-- [[James]] local text3 = "Choice 3" ]]
-- Choice(jamesimg,text1,text2,text3)
-- if outcome = 1 ... etc


Say("TEST PHRASE 1")
Say("TEST PHRASE 2")
Say("TEST PHRASE 3")