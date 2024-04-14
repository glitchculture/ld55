
text_tutorial = am.translate(0, 150) ^ am.text(mysprites.ReggaeOne32, "Sum,mon")
text_pressToPlay = am.translate(0, -100) ^ am.scale(0.5, 0.5)
    ^ am.text(mysprites.ReggaeOne32, "PRESS ENTER TO PLAY")

tutorial = am.group()
tutorial:append(background)
tutorial:append(text_tutorial)
tutorial:append(text_pressToPlay)
tutorial:append(framebuffer.rect)

tutorial:action(function()
    local t = am.frame_time
    tutorial:append(text_tutorial)
end)
