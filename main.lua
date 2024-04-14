-- noglobals()
require "window"
require "BoundingBox"
require "coroutines"

background = am.rect(-300, -300, 300, 300, vec4(1, 1, 1, 1))

framebuffer = require "framebuffer"
mysprites = require "mysprites"
require "title"
require "tutorial"
require "game"
require "gameover"

win.scene = framebuffer.spriteNode
gameState = title_screen
-- gameState = tutorial
-- gameState = in_game
-- gameState = gameover

paused = false
blur_bg = true
yOffset = 0

music = am.load_audio('240412c.ogg')
win.scene:action("music", am.play(music, true, 1, 1))

speech = am.load_audio('sum_mon.ogg')
win.scene:action("speech", am.play(speech, false, 1, 1))

gameoverwait = false

win.scene:action(function()
    if (not paused) then
        gameState:update()
        framebuffer.canvas:render(gameState)
    end

    -- if win:key_pressed("p") then
    --     paused = not paused
    -- end

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
            win.scene:action("speech", am.play(speech, false, 1, 1))
            gameState = tutorial
        end
    elseif gameState == tutorial then
        if win:key_pressed("enter") then
            win.scene:action("speech", am.play(speech, false, 1, 1))
            gameState = in_game
        end
    elseif gameState == gameover then
        if gameoverwait and win:key_pressed("enter") then
            win.scene:action("speech", am.play(speech, false, 1, 1))
            -- reset_game()
            gameState = in_game
            gameoverwait = false
        end
        
        gameoverwait = true
    end       
end)

background:action(1, action_color_cycle)

reset_game = function()
    top_number = 0
    correct_answer = 0
    answer = -1
    level = 0
    level_completed = true
end
