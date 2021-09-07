BotPaddle = Paddle{}

--[[
    The `init` function on our class is called just once, when the object
    is first created. Used to set up all variables in the class and get it
    ready for use.

    Our Paddle should take an X and a Y, for positioning, as well as a width
    and height for its dimensions.

    Note that `self` is a reference to *this* object, whichever object is
    instantiated at the time this function is called. Different objects can
    have their own x, y, width, and height values, thus serving as containers
    for data. In this sense, they're very similar to structs in C.
]]
function BotPaddle:init(x, y, width, height)
    self.super:init(x,y,width,height)
    self.bally=0;
end

function BotPaddle:update(dt)
    -- math.max here ensures that we're the greater of 0 or the player's
    -- current calculated Y position when pressing up so that we don't
    -- go into the negatives; the movement calculation is simply our
    -- previously-defined paddle speed scaled by dt
    if self.dy < 0 then
        self.y = math.max(0, self.y + self.dy * dt)
        if self.y < self.bally or self.y> self.bally then
            self.dy = -self.dy
        end

    else
        self.y = math.min(VIRTUAL_HEIGHT - self.height, self.y + self.dy * dt)
        if self.y < self.bally or self.y> self.bally then
            self.dy = -self.dy
        end
    end
end