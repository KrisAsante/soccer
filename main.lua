-----------------------------------------------------------------------------------------
--
-- Created by: Chris Asante
-- Created on: Feb 2018
-- how to add an event listener, so that when you touch an image you get feedback
--
-----------------------------------------------------------------------------------------
display.setDefault("background", 0.5, 0.5, 1 )
local myText = display.newText( "Chris Asante", 1024, 400, native.systemFont, 146 )
myText:setFillColor( 0, 0, 1 )

local soccerBall = display.newImageRect( "./assets/sprites/ball.png", 500, 480 )
soccerBall.x = display.contentCenterX
soccerBall.y = display.contentCenterY
soccerBall.id = "ball object"

local function onObjectTouch( event )
	-- it is not perfect, but we will make it better soon
    print( "Touched ball" )

    return true	
end

soccerBall:addEventListener( "touch", onObjectTouch )