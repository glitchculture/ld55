











-- win = am.window{title = "LD55"}

-- clear_color


-- background:tag('bg')


            -- y2 = 100


    -- group:append(background)


    -- if win:key_pressed("escape") then
    --     win:close()
    -- end


-- action_bg_blur = function(node)
-- --     node.color = vec4(0, 0, 0, 0)
--     group:remove(background)
-- end



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