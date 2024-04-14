-- win = am.window{title = "LD55"}

-- clear_color

img = [[
YYYYYYY
YCCCCCY
YCMMMCY
YCMGMCY
YCMMMCY
YCCCCCY
YYYYYYY
]]

background = am.rect(-300, -300, 300, 300, vec4(1, 1, 1, 1))
-- background:tag('bg')

squares = am.translate(-120, 0) ^ am.rotate(0) ^ am.scale(10) ^ am.sprite(img)
ball = am.circle(vec2(120, 100), 50)
line = am.line(vec2(-120, 0), vec2(120, 100), 4)

text_node = am.translate(0, 150) ^ am.text(mysprites.ReggaeOne32, "Sum,mon")

group = am.group()
group:append(background)
group:append(line)
group:append(squares)
group:append(ball)
group:append(text_node)
group:append(framebuffer.rect)

group:action(function()
    local t = am.frame_time

    squares"rotate".angle = t
    squares"scale".scale2d = vec2(math.sin(t) * 5 + 8)
    squares"sprite".color = vec4(math.fract(vec3(t, t * 3, t * 7)), 1)

    ball.color = vec4(
        math.sin(t) * 0.5 + 0.5,
        math.cos(t * 5) * 0.5 + 0.5,
        math.sin(t * 13) * 0.5 + 0.5, 1)
    ball.center = vec2(120, math.abs(math.cos(t)) * 300 - 200)

    line.point1 = squares"translate".position2d
    line.point2 = ball.center
    line.color = (1 - ball.color){a = 1}
    line.thickness = (math.sin(t) + 2) * 4

    -- if win:key_pressed("escape") then
    --     win:close()
    -- end
end)

action_bg_color_cycle = coroutine.create(function(node)
    -- group:append(background)
    while true do
        am.wait(am.tween(node, 5, {
            color = vec4(1, 0, 0, 1),
            -- y2 = 100
        }))
        am.wait(am.tween(node, 5, {
            color = vec4(1, 1, 0, 1),
            -- y2 = 0
        }))
        am.wait(am.tween(node, 5, {
            color = vec4(0, 1, 0, 1),
            -- y2 = 0
        }))            
    end
end)

-- action_bg_blur = function(node)
-- --     node.color = vec4(0, 0, 0, 0)
--     group:remove(background)
-- end

background:action(1, action_bg_color_cycle)

win.scene = group

-- win.clear_color:late_action(coroutine.create(function(node)
--     while true do
--         am.wait(am.tween(node, 1, {
--             color = vec4(0, 1, 0, 1),
--             y2 = 100
--         }))
--         am.wait(am.tween(node, 1, {
--             color = vec4(1, 0, 0, 1),
--             y2 = 0
--         }))
--     end
-- end))

-- win.scene:late_action(coroutine.create(function(node)
--     while true do
--         am.wait(am.tween(node, 1, {
--             color = vec4(0, 1, 0, 1),
--             y2 = 100
--         }))
--         am.wait(am.tween(node, 1, {
--             color = vec4(1, 0, 0, 1),
--             y2 = 0
--         }))
--     end

-- am.window{}.scene =

-- win.scene:action(function()
--     am.rect(-100, -100, 100, 0, vec4(1, 0, 0, 1))
--     :action(
--         am.tween(1, {
--             color = vec4(0, 1, 0, 1),
--             y2 = 100
--         }))
-- end)  
