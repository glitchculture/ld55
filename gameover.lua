
local text0 = "Sum,mon"
local text1 = 'Hey mon!  Doncha know how to Sum,mon?  Does not seem so!'
local text2 = 'You gotsta teak da top number mon, an add one to it!'
local text3 = 'Now teak dat number n multiply it back, to da number on de top!'
local text4 = 'Nows you gotz a new number mon, you almost found the Sum,mon!'
local text5 = 'Divide dat by a two, and you got de number be looking for!'
local text6 = 'Sum,mon!  Sum dem!'
local scale = 0.5

-- Hey mon!  Doncha know how to Sum,mon?  Does not seem so!
-- You gotsta teak da top number mon, an add one to it!
-- Now teak dat number n multiply it back, to da number on de top!
-- Nows you gotz a new number mon, you almost found the Sum,mon!
-- Divide dat by a two, and you got de number be looking for!
-- Sum,mon!  Sum dem!'

text_text0 = am.translate(0, 250) ^ am.scale(2, 2) ^ am.text(mysprites.ReggaeOne32, text0)
text_text1 = am.translate(0, 150) ^ am.scale(scale, scale) ^ am.text(mysprites.ReggaeOne32, text1)
text_text2 = am.translate(0, 100) ^ am.scale(scale, scale) ^ am.text(mysprites.ReggaeOne32, text2)
text_text3 = am.translate(0, 50) ^ am.scale(scale, scale) ^ am.text(mysprites.ReggaeOne32, text3)
text_text4 = am.translate(0, 0) ^ am.scale(scale, scale) ^ am.text(mysprites.ReggaeOne32, text4)
text_text5 = am.translate(0, -50) ^ am.scale(scale, scale) ^ am.text(mysprites.ReggaeOne32, text5)
text_text6 = am.translate(0, -100) ^ am.scale(scale, scale) ^ am.text(mysprites.ReggaeOne32, text6)

text_pressToPlay = am.translate(0, -200) ^ am.scale(1, 1)
    ^ am.text(mysprites.ReggaeOne32, "press ENTER to Sum,mon")

text_pressToPlay:action(action_position_cycle_tutorial)

gameover = am.group()
gameover:append(background)
gameover:append(text_text0)
gameover:append(text_text1)
gameover:append(text_text2)
gameover:append(text_text3)
gameover:append(text_text4)
gameover:append(text_text5)
gameover:append(text_text6)
gameover:append(text_pressToPlay)
gameover:append(framebuffer.rect)

gameover:action(function()
    blur_bg = true
    -- yOffset = -200    
    local t = am.frame_time
    gameover:append(text_text0)
end)
