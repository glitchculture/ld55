
text_title = am.translate(0, 50) ^ am.text(mysprites.ReggaeOne32, "Sum,mon")
text_pressEnter = am.translate(0, 0) ^ am.scale(0.5, 0.5)
    ^ am.text(mysprites.ReggaeOne32, "PRESS ENTER")

text_pressEnter:action(action_position_cycle)

title_screen = am.group()
title_screen:append(background)
title_screen:append(text_title)
title_screen:append(text_pressEnter)
title_screen:append(framebuffer.rect)

title_screen:action(function()
    blur_bg = false
    local t = am.frame_time
    title_screen:append(text_title)
end)
