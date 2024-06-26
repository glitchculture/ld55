
text_title = am.translate(0, 100) ^ am.scale(2, 2) ^ am.text(mysprites.ReggaeOne32, "Sum,mon")
text_pressEnter = am.translate(0, 0) ^ am.scale(1, 1) ^ am.text(mysprites.ReggaeOne32, "PRESS ENTER")
text_pressEnter:action(action_position_cycle_title)

small = 0.65
text_numbers = am.translate(0, -200) ^ am.scale(small, small) ^ am.text(mysprites.ReggaeOne32, "number keys to play")
text_fullscreen = am.translate(0, -230) ^ am.scale(small, small) ^ am.text(mysprites.ReggaeOne32, "f for fullscreen")
text_exit = am.translate(0, -260) ^ am.scale(small, small) ^ am.text(mysprites.ReggaeOne32, "ESC to exit")

title_screen = am.group()
title_screen:append(background)
title_screen:append(text_title)
title_screen:append(text_pressEnter)
title_screen:append(text_numbers)
title_screen:append(text_fullscreen)
title_screen:append(text_exit)
title_screen:append(framebuffer.rect)

title_screen:action(function()
    blur_bg = false
    -- yOffset = 0
    local t = am.frame_time
    title_screen:append(text_title)
end)
