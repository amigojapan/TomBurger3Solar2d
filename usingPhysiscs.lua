local physics = require "physics"
physics.start()
physics.setGravity( 0, 0 )--no gravity
physics.setDrawMode( "hybrid" )

--display.setDefault( "background", 255,0,0 )
local bg = display.newGroup()
for x = 0, 	display.contentWidth,75 
do
	for y = 0,display.contentWidth,75 
	do
		local myRectangle = display.newRect(bg, x, y, 75, 75 )
		myRectangle.strokeWidth = 5
		myRectangle:setFillColor( 255,0 ,0 )
		myRectangle:setStrokeColor( 0, 0, 0 )
	end
end


local instructions = display.newText( "日本語", 100, 100, "fonts/ume-tgc5.ttf", 100 )

-- Image fills that will be used for enterFrame animations for the knight.
--local tomImg = { type = "image", filename = "img/Tom.png" }
--local pipeImg = { type = "image", filename = "img/pipe.png" }

-- Declaring multiple similar variables on the same line to reduce repetition.
local movementDirection, state1 = "right", true
-- The knight's start/previous x location, as well as movement speed, jump height and jump duration.
prevX = 75
moveSpeed = 8

--local tomGroup = display.newGroup() -- By adding the knight and his shadow to a group, we can handle both at the same time.
--local pipeGroup = display.newGroup() -- By adding the knight and his shadow to a group, we can handle both at the same time.


--local tom = display.newRect( tomGroup, prevX, 75, 75, 75 )
tom=display.newImage("img/Tom.png", 10, 10,100,100)
--tom.fill = tomImg
physics.addBody(tom, { density=0.0, friction=0.0, bounce=0.0 } )
tom.myName = "tom"
--tomGroup.addBody(tom)
--local pipe = display.newRect( pipeGroup, 400, 400, 200, 200 )
pipe=display.newImage("img/pipe.png", 200, 200)
--pipe.fill = pipeImg
physics.addBody(pipe, { density=0.0, friction=0.0, bounce=0.0 } )
pipe.myName = "pipe"
--handle collision
  
local col = display.newText( "collision:false", 200, 200, "fonts/ume-tgc5.ttf", 100 )
--col.text="hey"

local function onLocalCollision( self, event )
 
    if ( event.phase == "began" ) then
		col.text = "collision:ture"
        --print( self.myName .. ": collision began with " .. event.other.myName )
		
    elseif ( event.phase == "ended" ) then
		col.text = "collision:false"
        --print( self.myName .. ": collision ended with " .. event.other.myName )
    end
end
 
tom.collision = onLocalCollision
tom:addEventListener( "collision" )
 
pipe.collision = onLocalCollision
pipe:addEventListener( "collision" )

--handle keystrokes
local action = {}
local function moveCharacter()
	local keyDown = false
	-- See if one of the selected action buttons is down and move the knight.
	if action["a"] or action["left"] then
		tom:translate( -moveSpeed, 0 )
		keyDown = true
	end
	if action["d"] or action["right"] then
		tom:translate( moveSpeed, 0 )
		keyDown = true
	end
	if action["w"] or action["up"] then
		tom:translate( 0, -moveSpeed )
		keyDown = true
	end
	if action["s"] or action["down"] then
		tom:translate( 0, moveSpeed )
		keyDown = true
	end
end

local function onKeyEvent( event )
	if event.phase == "down" then
		action[event.keyName] = true
	else
		action[event.keyName] = false
	end
end

--Runtime:addEventListener( "collision", onLocalCollision )
Runtime:addEventListener( "enterFrame", moveCharacter )
Runtime:addEventListener( "key", onKeyEvent )