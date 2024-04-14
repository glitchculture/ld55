
text_title = am.translate(0, 100) ^ am.scale(2, 2) ^ am.text(mysprites.ReggaeOne32, "Sum,mon")
text_pressEnter = am.translate(0, 0) ^ am.scale(1, 1)
    ^ am.text(mysprites.ReggaeOne32, "PRESS ENTER")

text_pressEnter:action(action_position_cycle_title)

title_screen = am.group()
title_screen:append(background)
title_screen:append(text_title)
title_screen:append(text_pressEnter)
title_screen:append(framebuffer.rect)

title_screen:action(function()
    blur_bg = false
    -- yOffset = 0
    local t = am.frame_time
    title_screen:append(text_title)
end)
