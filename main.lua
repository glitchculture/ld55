-- noglobals()
require "window"
require "BoundingBox"
require "tweens"

background = am.rect(-300, -300, 300, 300, vec4(1, 1, 1, 1))

framebuffer = require "framebuffer"
mysprites = require "mysprites"
require "title"
require "tutorial"
require "game"
-- require "example"

win.scene = framebuffer.spriteNode
gameState = title_screen

local paused = false
blur_bg = true

win.scene:action(function()
    if (not paused) then
        gameState:update()
        framebuffer.canvas:render(gameState)
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

    if blur_bg then   
        background.hidden = true
        background.paused = true
    else
        background.hidden = false
        background.paused = false                        
    end

    if gameState == title_screen then 
        if win:key_pressed("enter") then
            gameState = tutorial
        end
    elseif gameState == tutorial then
        if win:key_pressed("enter") then
            gameState = in_game
        end
    end       
end)

local music = am.load_audio('240412c.ogg')
win.scene:action("music", am.play(music, true, 1, 1))

local speech = am.load_audio('sum_mon.ogg')
win.scene:action("speech", am.play(speech, false, 1, 1))

background:action(1, action_color_cycle)










-- win.scene = title_screen



    -- if win:key_pressed("b") then
    --     blur_bg = not blur_bg
    -- end

-- win.scene = framebuffer.spriteNode


-- local track = am.track(music, true)

-- win.clear_color = vec4(0.3,0.5,0.5,1)

        -- log('blur_bg: ' .. tostring(blur_bg))

            -- background:action(1, action_bg_blur)
            -- group:remove(background)
            -- group:replace('bg', nil)   



            -- background:action(1, action_bg_color_cycle)
            -- group:append(background)
            -- group:replace('bg', background) 