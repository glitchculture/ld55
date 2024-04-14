
action_color_cycle = coroutine.create(function(node)
    while true do
        am.wait(am.tween(node, 5, {
            color = vec4(1, 0, 0, 1),
        }))
        am.wait(am.tween(node, 5, {
            color = vec4(1, 1, 0, 1),
        }))
        am.wait(am.tween(node, 5, {
            color = vec4(0, 1, 0, 1),
        }))            
    end
end)

action_position_cycle_title = coroutine.create(function(node)
    while true do
        am.wait(am.tween(node, 1, {
            position2d = vec2(0, 10 + yOffset)
        }, am.ease.sine
        ))
        am.wait(am.tween(node, 1, {
            position2d = vec2(0, 0 + yOffset)
        }, am.ease.sine
    ))
    end
end)

action_position_cycle_tutorial = coroutine.create(function(node)
    while true do
        am.wait(am.tween(node, 1, {
            position2d = vec2(0, -190 + yOffset)
        }, am.ease.sine
        ))
        am.wait(am.tween(node, 1, {
            position2d = vec2(0, -200 + yOffset)
        }, am.ease.sine
    ))
    end
end)

action_show_formula = coroutine.create(function(node)
    while true do
        am.wait(am.tween(node, 1, {
            position2d = vec2(0, -190 + yOffset)
        }, am.ease.sine
        ))
        am.wait(am.tween(node, 1, {
            position2d = vec2(0, -200 + yOffset)
        }, am.ease.sine
    ))
    end
end)
