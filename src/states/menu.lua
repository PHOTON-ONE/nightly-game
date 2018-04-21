Menu = {}

function Menu:init()
	local object = {
		background = {r=0.5, g=0.2, b=0.7},
		open = true
    }

    setmetatable(object, { __index = Menu })
    return object
end

function Menu:update(dt)

end

function Menu:draw()
	if self.open then
		love.graphics.setColor(self.background.r, self.background.g, self.background.b, 1);
		love.graphics.rectangle('fill', 0, 0, Window.width, Window.height);
	end
end

function Menu:keyreleased( key )
	
end

function Menu:keypressed( key )
	if self.open then
		self.open = false
	end

	if key == 'escape' then
		self.open = true
	end
end

function Menu:touchreleased( id, x, y, dx, dy, pressure )
	if self.open == true then
		self.open = false
	end
end

function Menu:open( is )
	self.open = is;
end