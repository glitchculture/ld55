img = [[
YYYYYYY
YCCCCCY
YCMMMCY
YCMGMCY
YCMMMCY
YCCCCCY
YYYYYYY
]]

squares = am.translate(-120, 0) ^ am.rotate(0) ^ am.scale(10) ^ am.sprite(img)
ball = am.circle(vec2(120, 100), 50)
line = am.line(vec2(-120, 0), vec2(120, 100), 4)

text_example = am.translate(0, 50) ^ am.text(mysprites.ReggaeOne32, "Sum,mon")
-- text_press = am.translate(0, 0) ^ am.scale(0.5, 0.5)
--     ^ am.text(mysprites.ReggaeOne32, "PRESS ENTER TO PLAY")

example = am.group()
example:append(background)
example:append(line)
example:append(squares)
example:append(ball)
example:append(text_example)
-- example:append(text_press)
example:append(framebuffer.rect)

example:action(function()
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

    example:append(text_example)
end)

background:action(1, action_color_cycle)

win.scene = example
