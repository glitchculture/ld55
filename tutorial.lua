
local text0 = "Sum,mon"
local text1 = 'Hey mon!  You wanna be a math wiz?  I thought so.'
local text2 = 'You know what you gotta do to become a math whiz?  Sum, mon.  Sum.'
local text3 = 'Take deez numbers for example.  What you gonna do with them?'
local text4 = 'Sum dem!  Sum dem, mon.'
local scale = 0.5

text_text0 = am.translate(0, 250) ^ am.scale(2, 2) ^ am.text(mysprites.ReggaeOne32, text0)
text_text1 = am.translate(0, 100) ^ am.scale(scale, scale) ^ am.text(mysprites.ReggaeOne32, text1)
text_text2 = am.translate(0, 50) ^ am.scale(scale, scale) ^ am.text(mysprites.ReggaeOne32, text2)
text_text3 = am.translate(0, -0) ^ am.scale(scale, scale) ^ am.text(mysprites.ReggaeOne32, text3)
text_text4 = am.translate(0, -50) ^ am.scale(scale, scale) ^ am.text(mysprites.ReggaeOne32, text4)

text_pressToPlay = am.translate(0, -200) ^ am.scale(1, 1)
    ^ am.text(mysprites.ReggaeOne32, "PRESS ENTER TO PLAY")

text_pressToPlay:action(action_position_cycle_tutorial)

tutorial = am.group()
tutorial:append(background)
tutorial:append(text_text0)
tutorial:append(text_text1)
tutorial:append(text_text2)
tutorial:append(text_text3)
tutorial:append(text_text4)
tutorial:append(text_pressToPlay)
tutorial:append(framebuffer.rect)

tutorial:action(function()
    blur_bg = true
    -- yOffset = -200    
    local t = am.frame_time
    tutorial:append(text_text0)
end)
