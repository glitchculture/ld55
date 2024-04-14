sigma = am.translate(-100, 0) ^ am.sprite(mysprites.Greek_uc_sigma)

top_text = "Sum,mon"
text_inGame = am.translate(0, 334) ^ am.text(mysprites.ReggaeOne32, top_text)

text_iEquals = am.translate(-15, 0) ^ am.text(mysprites.ReggaeOne32, "i =")
text_iEquals1 = am.translate(-100, -85) ^ am.text(mysprites.ReggaeOne32, "i = 1")

top_number = 0
top_number_text_node = am.text(mysprites.ReggaeOne32, tostring(top_number))
-- top_number_text_node:tag('n_top_number_text')
text_n = am.translate(-100, 90) ^ top_number_text_node
-- text_n:tag('text_n_node')

level = 0
level_completed = true

in_game = am.group()
in_game:append(background)
in_game:append(sigma)
in_game:append(text_inGame)
in_game:append(text_n)
in_game:append(text_iEquals)
in_game:append(text_iEquals1)
in_game:append(framebuffer.rect)

in_game:action(function()
    blur_bg = false
    local t = am.frame_time

    local keyPressed = GetKeyPressed()

    if keyPressed ~= 999 then
        level_completed = true
    end

    if level_completed then
        level = level + 1
        level_completed = false
        top_number = GetNumber(level)
        -- log('top_number = ' .. tostring(top_number))
        in_game:remove(text_n)
        text_n = am.translate(-100, 90) ^ am.text(mysprites.ReggaeOne32, tostring(top_number))
        in_game:append(text_n)
    end
end)

function GetKeyPressed()
    if win:key_pressed("1") then
        return 1
    elseif win:key_pressed("2") then
        return 2
    elseif win:key_pressed("3") then
        return 3
    elseif win:key_pressed("4") then
        return 4
    elseif win:key_pressed("5") then
        return 5
    elseif win:key_pressed("6") then
        return 6
    elseif win:key_pressed("7") then
        return 7
    elseif win:key_pressed("8") then
        return 8
    elseif win:key_pressed("9") then
        return 9
    elseif win:key_pressed("0") then
        return 0
    else
        return 999    
    end       
end

function GetNumber(level)
    return math.random(3 * level)
end

background:action(1, action_color_cycle)

win.scene = in_game









-- first level, single digit number results
-- level 2: two digit number results

-- nope:
-- choose difficulty: 1-9
-- Nah, mon
