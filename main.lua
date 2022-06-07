require("Player")
require("config")
require("ball")
require("ai")

function love.load()
    AI:load()
    Player:load()
    Ball:load()
end


function love.update(dt)
    AI:update(dt)
    Player:update(dt)
    Ball:update(dt)
end


function love.draw()
    AI:draw()
    Player:draw()
    Ball:draw()
 end

 function checkCollision(a, b)
    if a.x + a.width > b.x and a.x < b.x + b.width and a.y + a.height > b.y and b.y + b.height then
        return true
    else   
        return false
    end
    print("Collision Check: True!") 
 end