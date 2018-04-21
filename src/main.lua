

--[[
  __  __       _       
 |  \/  |     (_)      
 | \  / | __ _ _ _ __  
 | |\/| |/ _` | | '_ \ 
 | |  | | (_| | | | | |
 |_|  |_|\__,_|_|_| |_|

]]
          
require 'actors.player'
require 'states.menu'

function love.load()
	--[[ Window & Mouse ]]--
		Window = {
			width = 0,
			height = 0,
			focus = love.window.hasFocus(),
		}

		Mouse = {
			x = love.mouse.getX(),
			y = love.mouse.getY(),
		}
	--[[ ----- - ----- ]]--

	--[[ Actors ]]--
		Actors = {
			player = Player:new()
		}
	--[[ ------ ]]--

	--[[ Menu ]]--
		Menu = Menu:init()
	--[[ ---- ]]--

	--[[ Settings ]]--
		fpsGraph = require "libs.FPSGraph"
		fps = fpsGraph.createGraph()
	--[[ -------- ]]--
 end

 function love.update( dt )
	 	Window.width, Window.height = love.window.getMode()
		Mouse.x = love.mouse.getX()
		Mouse.y = love.mouse.getY()
	--[[ ----- - ----- ]]--


	-- Update Actors
		Menu:update(dt);

		if Menu.open then
			return;
		end
		Actors.player:update(dt);

	--[[ -------- ]]--
		fpsGraph.updateFPS(fps, dt)
 end

 function love.draw()

 	Actors.player:draw();


 	Menu:draw();
 	--[[ -------- ]]--
 		fpsGraph.drawGraphs({fps})
 end

--[[
  _____                   _       
 |_   _|                 | |      
   | |  _ __  _ __  _   _| |_ ___ 
   | | | '_ \| '_ \| | | | __/ __|
  _| |_| | | | |_) | |_| | |_\__ \
 |_____|_| |_| .__/ \__,_|\__|___/
             | |                  
             |_|                  
]]

function love.keypressed( key, isrepeat )
	Menu:keypressed(key);
	if Menu.open then
		return;
	end

end

function love.keyreleased( key )
	Menu:keyreleased(key)
	if Menu.open then
		return;
	end

end

function love.textinput( text )

end

function love.mousefocus( f )

end

function love.mousepressed( x, y, button )

end

function love.mousereleased( x, y, button )

end

function love.touchpressed( id, x, y, dx, dy, pressure )

end

function love.touchreleased( id, x, y, dx, dy, pressure )
	Menu:touchreleased( id, x, y, dx, dy, pressure )
	if Menu.open then
		return;
	end

end

function love.touchmoved( id, x, y, dx, dy, pressure )

end

--[[
 __          ___           _               
 \ \        / (_)         | |              
  \ \  /\  / / _ _ __   __| | _____      __
   \ \/  \/ / | | '_ \ / _` |/ _ \ \ /\ / /
    \  /\  /  | | | | | (_| | (_) \ V  V / 
     \/  \/   |_|_| |_|\__,_|\___/ \_/\_/                                             
]]

function love.focus( f )

end

function love.visible( v )

end

function love.resize( w, h )

end

function love.threaderror( thread, errorstr )

end

function love.quit()

end

 --[[
  ______                _   _                 
 |  ____|              | | (_)                
 | |__ _   _ _ __   ___| |_ _  ___  _ __  ___ 
 |  __| | | | '_ \ / __| __| |/ _ \| '_ \/ __|
 | |  | |_| | | | | (__| |_| | (_) | | | \__ \
 |_|   \__,_|_| |_|\___|\__|_|\___/|_| |_|___/                                            
 ]]

function NewFunction(new)

end

 --[[
 ____________________________________
/                                    \

	$$$$$$$$\  $$$$$$\   $$$$$$\  
	$$  _____|$$  __$$\ $$  __$$\ 
	$$ |      $$ /  $$ |$$ /  \__|
	$$$$$\    $$ |  $$ |\$$$$$$\  
	$$  __|   $$ |  $$ | \____$$\ 
	$$ |      $$ |  $$ |$$\   $$ |
	$$$$$$$$\  $$$$$$  |\$$$$$$  |
	\________| \______/  \______/ 
                              
\____________________________________/
]]