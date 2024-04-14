-- noglobals()
require "window"
require "BoundingBox"
framebuffer = require "framebuffer"
mysprites = require "mysprites"
require "game"
-- require "example"

win.scene = framebuffer.spriteNode

local paused = false
blur_bg = false

win.scene:action(function()
    if (not paused) then
        group:update()
        framebuffer.canvas:render(group)
    end

    if win:key_pressed("p") then
        paused = not paused
    end

    if win:key_pressed("f") then
        if (win.mode == "fullscreen") then
            win.mode = "windowed"
        else
            win.mode = "fullscreen"
        end
    end

    if win:key_pressed("escape") then
        win:close()
    end

    if win:key_pressed("b") then
        blur_bg = not blur_bg

        if blur_bg then
            -- background:action(1, action_bg_blur)
            -- group:remove(background)
            -- group:replace('bg', nil)      
            background.hidden = true
            background.paused = true
        else
            -- background:action(1, action_bg_color_cycle)
            -- group:append(background)
            -- group:replace('bg', background)
            background.hidden = false
            background.paused = false                        
        end

        -- log('blur_bg: ' .. tostring(blur_bg))
    end

    win.clear_color = vec4(0.3,0.5,0.5,1)
end)
