sigma = am.translate(-100, 0) ^ am.sprite(mysprites.Greek_uc_sigma)

top_text = "Sum,mon"
text_inGame = am.translate(0, 334) ^ am.text(mysprites.ReggaeOne32, top_text)

text_iEquals = am.translate(-15, 0) ^ am.text(mysprites.ReggaeOne32, "i =")
text_iEquals1 = am.translate(-100, -85) ^ am.text(mysprites.ReggaeOne32, "i = 1")

text_formula = am.translate(90, 0)
text_formula_n = am.translate(-190, 90) ^ am.text(mysprites.ReggaeOne32, "n")
text_formula_top = am.translate(0,25) ^ am.text(mysprites.ReggaeOne32, "n(n+1)")
-- text_formula_line = am.translate(0, 0) ^ am.text(mysprites.ReggaeOne32, "---------")
text_formula_line = am.line(vec2(-65,-5),vec2(65,-5),3)
text_formula_bottom = am.translate(0, -30) ^ am.text(mysprites.ReggaeOne32, "2")

text_formula:append(text_formula_n)
text_formula:append(text_formula_top)
text_formula:append(text_formula_line)
text_formula:append(text_formula_bottom)

top_number = 0
correct_answer = 0
top_number_text_node = am.text(mysprites.ReggaeOne32, tostring(top_number))
-- top_number_text_node:tag('n_top_number_text')
text_n_digit = am.translate(-100, 90) ^ top_number_text_node
text_n_line = am.line(vec2(20,-30),vec2(150,-30),3)

answer = -1
text_answer = am.translate(80, 0) ^ am.text(mysprites.ReggaeOne32, tostring(answer))

level = 0
level_completed = true

text_level = am.translate(0, 270) ^ am.text(mysprites.ReggaeOne32, 'Level: ' .. tostring(level))
text_enter = am.translate(0, -325) ^ am.scale(0.5, 0.5) ^ am.text(mysprites.ReggaeOne32, '')

in_game = am.group()
in_game:append(background)
in_game:append(sigma)
in_game:append(text_inGame)
-- in_game:append(text_n_digit)
in_game:append(text_n_line)
-- in_game:append(text_formula)
in_game:append(text_iEquals)
in_game:append(text_iEquals1)
in_game:append(text_answer)
in_game:append(text_level)
in_game:append(framebuffer.rect)

in_game:action(function()
    blur_bg = false
    local t = am.frame_time

    local keyPressed = GetKeyPressed()

    if keyPressed ~= 999 then
        if keyPressed == 12345 then
            if answer ~= -1 then    
                -- evaluate!
                if answer == correct_answer then
                    level_completed = true
                    win.scene:action("speech", am.play(speech, false, 1, 1))
                else
                    gameoverwait = false
                    gameState = gameover
                end
            end
        elseif keyPressed == 54321 then
            if string.len(tostring(answer)) > 0 then
                answer = tonumber(tostring(answer):sub(1, -2))
            end

            if answer == nil then
                answer = -1
            end
        elseif answer == -1 then
            answer = keyPressed
        elseif string.len(tostring(answer)) < string.len(tostring(correct_answer)) then
            -- add number to end of answer string, unless we reach limit
            answer = tonumber(tostring(answer) .. keyPressed)
        end

        if answer ~= -1 then
            in_game:remove(text_enter)
            text_enter = am.translate(0, -325) ^ am.scale(0.5, 0.5) ^ am.text(mysprites.ReggaeOne32, 'press ENTER to Sum,mon')
            in_game:append(text_enter)
        else
            in_game:remove(text_enter)
            text_enter = am.translate(0, -325) ^ am.scale(0.5, 0.5) ^ am.text(mysprites.ReggaeOne32, '')
            in_game:append(text_enter)   
        end
    end

    if answer == -1 then
        numberString = '#'

        if string.len(tostring(correct_answer)) == 5 then
            numberString = '#####'
        elseif string.len(tostring(correct_answer)) == 4 then
            numberString = '####'
        elseif string.len(tostring(correct_answer)) == 3 then
            numberString = '###'
        elseif string.len(tostring(correct_answer)) == 2 then
            numberString = '##'
        end

        in_game:remove(text_answer)
        text_answer = am.translate(80, 0) ^ am.text(mysprites.ReggaeOne32, numberString)
        in_game:append(text_answer)
    else
        in_game:remove(text_answer)
        text_answer = am.translate(80, 0) ^ am.text(mysprites.ReggaeOne32, tostring(answer))
        in_game:append(text_answer)       
    end

    if level_completed then
        level = level + 1
        level_completed = false
        answer = -1
        top_number = GetNumber(level)
        correct_answer = top_number * (top_number + 1) / 2
        -- log('top_number = ' .. tostring(top_number))
        in_game:remove(text_n_digit)
        text_n_digit = am.translate(-100, 90) ^ am.text(mysprites.ReggaeOne32, tostring(top_number))
        in_game:append(text_n_digit)
        in_game:remove(text_level)
        text_level = am.translate(0, 270) ^ am.text(mysprites.ReggaeOne32, 'Level: ' .. tostring(level))
        in_game:append(text_level)
        in_game:remove(text_enter)
        text_enter = am.translate(0, -325) ^ am.scale(0.5, 0.5) ^ am.text(mysprites.ReggaeOne32, '')
        in_game:append(text_enter)               
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
    elseif win:key_pressed("enter") then
        return 12345
    elseif win:key_pressed("backspace") then
        return 54321        
    else
        return 999    
    end       
end

function GetNumber(level)
    if level == 1 then
        return 1
    elseif level == 2 then
        return math.random(2, 2 * level)
    else
        return math.random(2 * level)
    end
end

background:action(1, action_color_cycle)

win.scene = in_game









-- first level, single digit number results
-- level 2: two digit number results

-- nope:
-- choose difficulty: 1-9
-- Nah, mon
