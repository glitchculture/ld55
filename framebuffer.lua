local framebuffer = ...

local fbTexture = am.texture2d(win.width, win.height)
local canvas = am.framebuffer(fbTexture)

local alphaBlack = vec4(0.0, 0.0, 0.0, 0.12)
local rect = am.rect(-win.width, -win.height, win.width, win.height, alphaBlack)

local spriteSpec = 
{
    texture = fbTexture, 
    s1 = 0, 
    t1 = 0, 
    s2 = 1, 
    t2 = 1,
    x1 = 0, 
    y1 = 0, 
    x2 = win.width, 
    y2 = win.height,
    width = win.width,
    height = win.height,
}

framebuffer.spriteNode = am.sprite(spriteSpec)
framebuffer.canvas = canvas
framebuffer.rect = rect
