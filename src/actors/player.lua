Player = {}

function Player:new()
	local object = {
		image = nil,
		x = 0,
		y = 200,
		width = 32,
		height = 64,
		ySpeed = 0,
		xSpeed = 0,
		speed = 500,
		friction = 5
    }

    setmetatable(object, { __index = Player })
    return object
end

function Player:update(dt)
	self:move(dt);
	self:travel(dt);
end

function Player:draw()
	love.graphics.setColor(255, 255, 255, 255);
	love.graphics.rectangle("fill", self.x, self.y, self.width, self.height);
end

function Player:move(dt)
	self.x = self.x + self.xSpeed * dt
	self.y = self.y + self.ySpeed * dt
	self.xSpeed = self.xSpeed * (1 - math.min(dt*self.friction, 1))
	self.ySpeed = self.ySpeed * (1 - math.min(dt*self.friction, 1))
end

function Player:travel(dt)
	if love.keyboard.isDown("d") and self.xSpeed < self.speed then
		self.xSpeed = self.xSpeed + self.speed * dt
	end

	if love.keyboard.isDown("a") and self.xSpeed > -self.speed then
		self.xSpeed = self.xSpeed - self.speed * dt
	end

	if love.keyboard.isDown("s") and self.ySpeed < self.speed then
		self.ySpeed = self.ySpeed + self.speed * dt
	end

	if love.keyboard.isDown("w") and self.ySpeed > -self.speed then
		self.ySpeed = self.ySpeed - self.speed * dt
	end
end