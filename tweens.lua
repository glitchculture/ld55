
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

action_position_cycle = coroutine.create(function(node)
    while true do
        am.wait(am.tween(node, 1, {
            position2d = vec2(0, 10)
        }, am.ease.sine
        ))
        am.wait(am.tween(node, 1, {
            position2d = vec2(0, 0)
        }, am.ease.sine
    ))
    end
end)
