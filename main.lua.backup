--constarts
gridSize=64
moveSpeed = gridSize
timeForMoveInMilliseconds=500

-- Define grid boundaries
local gridWidth = display.contentWidth
local gridHeight = display.contentHeight

--draw tiled backgouod
for x = 1, 	15
do
	for y = 1, 11 
	do
		local myRectangle = display.newRect(x*gridSize, y*gridSize, gridSize, gridSize )
		myRectangle.strokeWidth = 5
		myRectangle:setFillColor( 0.5,0 , 0 )
		myRectangle:setStrokeColor( 0, 0, 0 )
	end
end


--layout kitchen
kitchen ={}
function resizeObjectToGridSize(object,objectName)
	object.width=gridSize
	object.height=gridSize
	object.myName = objectName
	table.insert(kitchen, object)
end

--block=display.newImage("img/block.png", gridSize*1, gridSize*1,gridSize,gridSize)
--resizeObjectToGridSize(block,"block")
block1=display.newImage("img/block.png", gridSize*1, gridSize*1,gridSize,gridSize)
resizeObjectToGridSize(block1,"block")
fries=display.newImage("img/fries_box_empty.png", gridSize*2, gridSize*2,gridSize,gridSize)
resizeObjectToGridSize(fries,"block")
fryer1=display.newImage("img/fryer_empty.png", gridSize*2, gridSize*3,gridSize,gridSize)
resizeObjectToGridSize(fryer1,"block")
fryer2=display.newImage("img/fryer_empty.png", gridSize*2, gridSize*4,gridSize,gridSize)
resizeObjectToGridSize(fryer2,"block")
timer1=display.newImage("img/fryer_timer_off.png", gridSize*1, gridSize*3,gridSize,gridSize)
resizeObjectToGridSize(timer1,"block")
timer2=display.newImage("img/fryer_timer_off.png", gridSize*1, gridSize*4,gridSize,gridSize)
resizeObjectToGridSize(timer2,"block")
block2=display.newImage("img/block.png", gridSize*1, gridSize*5,gridSize,gridSize)
resizeObjectToGridSize(block2,"block")
fridge1=display.newImage("img/fridge.png", gridSize*1, gridSize*6,gridSize,gridSize)
resizeObjectToGridSize(fridge1,"block")

register=display.newImage("img/register.png", gridSize*6, gridSize*1,gridSize,gridSize)
resizeObjectToGridSize(register,"block")
sekino=display.newImage("img/sekino.png", gridSize*6, gridSize*2,gridSize,gridSize)
resizeObjectToGridSize(sekino,"block")
orders_tray=display.newImage("img/orders_tray.png", gridSize*5, gridSize*2,gridSize,gridSize)
resizeObjectToGridSize(orders_tray,"block")
orders_spindle=display.newImage("img/orders_spindle.png", gridSize*5, gridSize*3,gridSize,gridSize)
resizeObjectToGridSize(orders_spindle,"orders_spindle")
fry_scale_empty=display.newImage("img/fry_scale_empty.png", gridSize*5, gridSize*4,gridSize,gridSize)
resizeObjectToGridSize(fry_scale_empty,"fry_scale_empty")
dresser_slot_ketchup=display.newImage("img/dresser_slot_ketchup.png", gridSize*7, gridSize*4,gridSize,gridSize)
resizeObjectToGridSize(dresser_slot_ketchup,"dresser_slot_ketchup")
dresser_slot_mustard=display.newImage("img/dresser_slot_mustard.png", gridSize*8, gridSize*4,gridSize,gridSize)
resizeObjectToGridSize(dresser_slot_mustard,"dresser_slot_mustard")

dresser_slot_empty=display.newImage("img/dresser_slot_empty.png", gridSize*9, gridSize*4,gridSize,gridSize)
resizeObjectToGridSize(dresser_slot_empty,"dresser_slot_empty")
dresser_slot_empty=display.newImage("img/dresser_slot_empty.png", gridSize*10, gridSize*4,gridSize,gridSize)
resizeObjectToGridSize(dresser_slot_empty,"dresser_slot_empty")
dresser_slot_empty=display.newImage("img/dresser_slot_empty.png", gridSize*11, gridSize*4,gridSize,gridSize)
resizeObjectToGridSize(dresser_slot_empty,"dresser_slot_empty")
dresser_slot_empty=display.newImage("img/dresser_slot_empty.png", gridSize*12, gridSize*4,gridSize,gridSize)
resizeObjectToGridSize(dresser_slot_empty,"dresser_slot_empty")
dresser_slot_empty=display.newImage("img/dresser_slot_empty.png", gridSize*13, gridSize*4,gridSize,gridSize)
resizeObjectToGridSize(dresser_slot_empty,"dresser_slot_empty")

pickles_tray=display.newImage("img/pickles_tray.png", gridSize*11, gridSize*2,gridSize,gridSize)
resizeObjectToGridSize(pickles_tray,"pickles_tray")
cheese_tray=display.newImage("img/cheese_tray.png", gridSize*10, gridSize*2,gridSize,gridSize)
resizeObjectToGridSize(cheese_tray,"cheese_tray")
wrapper_yellow=display.newImage("img/wrapper_yellow.png", gridSize*9, gridSize*2,gridSize,gridSize)
resizeObjectToGridSize(wrapper_yellow,"wrapper_yellow")
wrapper_red=display.newImage("img/wrapper_red.png", gridSize*8, gridSize*2,gridSize,gridSize)
resizeObjectToGridSize(wrapper_red,"wrapper_red")
--teppan
teppan_empty=display.newImage("img/teppan_empty.png", gridSize*1, gridSize*7,gridSize,gridSize)
resizeObjectToGridSize(teppan_empty,"teppan_empty")
teppan_empty=display.newImage("img/teppan_empty.png", gridSize*1, gridSize*8,gridSize,gridSize)
resizeObjectToGridSize(teppan_empty,"teppan_empty")
teppan_empty=display.newImage("img/teppan_empty.png", gridSize*1, gridSize*9,gridSize,gridSize)
resizeObjectToGridSize(teppan_empty,"teppan_empty")
teppan_empty=display.newImage("img/teppan_empty.png", gridSize*1, gridSize*10,gridSize,gridSize)
resizeObjectToGridSize(teppan_empty,"teppan_empty")
spatchula_tray_with_spatchula=display.newImage("img/spatchula_tray_with_spatchula_rotated.png", gridSize*1, gridSize*11,gridSize,gridSize)
resizeObjectToGridSize(spatchula_tray_with_spatchula,"spatchula_tray_with_spatchula")
--lower items
fridge2=display.newImage("img/fridge.png", gridSize*11, gridSize*11,gridSize,gridSize)
resizeObjectToGridSize(fridge2,"fridge2")
toaster_off=display.newImage("img/toaster_off.png", gridSize*8, gridSize*11,gridSize,gridSize)
resizeObjectToGridSize(toaster_off,"toaster_off")
trash_can=display.newImage("img/trash_can.png", gridSize*6, gridSize*11,gridSize,gridSize)
resizeObjectToGridSize(trash_can,"trash_can")
broom=display.newImage("img/broom.png", gridSize*5, gridSize*11,gridSize,gridSize)
resizeObjectToGridSize(broom,"broom")

--local instructions = display.newText( "日本語", 100, 100, "fonts/ume-tgc5.ttf", 100 )

-- Image fills that will be used for enterFrame animations for the knight.
--local tomImg = { type = "image", filename = "img/Tom.png" }
--local pipeImg = { type = "image", filename = "img/pipe.png" }

-- Declaring multiple similar variables on the same line to reduce repetition.
local movementDirection, state1 = "right", true
-- The knight's start/previous x location, as well as movement speed, jump height and jump duration.
--prevX = gridSize


--local tomGroup = display.newGroup() -- By adding the knight and his shadow to a group, we can handle both at the same time.
--local pipeGroup = display.newGroup() -- By adding the knight and his shadow to a group, we can handle both at the same time.


--local tom = display.newRect( tomGroup, prevX, gridSize, gridSize, gridSize )
rat=display.newImage("img/rat_frame1.png", gridSize*13, gridSize*2,gridSize,gridSize)
rat.width=gridSize
rat.height=gridSize
rat.myName = "rat"
rat.InMotion=false

tom = display.newGroup()
--tom=display.newImage("img/Tom.png", gridSize*10, gridSize*10,gridSize,gridSize)
tomImg = display.newImageRect( tom, "img/Tom.png", gridSize, gridSize )
tomWithBroomImg = display.newImageRect( tom, "img/Tom_with_broom_frame1.png", gridSize, gridSize )
tomWithBroomImg.isVisible=false
tom.x = gridSize*10
tom.y = gridSize*10
tom.width=gridSize
tom.height=gridSize
tom.myName = "tom"
tom.InMotion=false
tom.holdingBroom=false

--local pipe = display.newRect( pipeGroup, 400, 400, 200, 200 )
pipe=display.newImage("img/pipe.png", 200, 200)
pipe.isVisible = false
--pipe.fill = pipeImg
pipe.myName = "pipe"
--handle collision
  
local col = display.newText( "collision:false", 0, 0, "fonts/ume-tgc5.ttf", 40 )
--col.text="hey"

function findSpriteInTable(spritesTable,id)
	for _,v in pairs(spritesTable) do
		if v.myName == id then
			-- do something
			return v
		end
	end
end

-- Function to handle collision with kitchen items
local function handleKitchenCollision(sprite)
	if sprite.myName == "broom" then
		sprite.isVisible = false
		tomImg.isVisible = false -- tom 
		tomWithBroomImg.isVisible = true
		tom.holdingBroom=true
	end
	if sprite.myName ==  "trash_can" then
		b= findSpriteInTable(kitchen,"broom")
		b.isVisible=true
		tomImg.isVisible = true -- tom 
		tomWithBroomImg.isVisible = false
		tom.holdingBroom=false
	end
end

-- Function to handle collision with poops
local function handlePoopCollision(sprite)
	if sprite.myName == "aPoop" then
		if tomWithBroomImg.isVisible then
			--sprite.destroy()
			sprite.isVisible = false --will need to check for this when reducing tom's life , it must be true
		end
	end
end
	

function onCompletecallback(obj)
	obj.InMotion=false
end

function moveInDirection(dx, dy, direction, movingObject)
	if movingObject.myName == "tom" then
		--happens when tom moves
		--print(tostring(movingObject.InMotion))
	end
	if movingObject.InMotion then
		return
	end
	
	-- Calculate new position
	local newX = movingObject.x + dx
	local newY = movingObject.y + dy

	-- Check boundaries
	if newX - (movingObject.width / 2) < 0 or newX + (movingObject.width / 2) > gridWidth or newY - (movingObject.height / 2) < 0 or newY + (movingObject.height / 2) > gridHeight then
		return
	end

	movingObject.InMotion = true
	movingObject:translate(dx, dy)
	local collided=false

    for key, sprite in pairs(kitchen) do
        if detectCollision(
                movingObject.x - (movingObject.width / 2),
                movingObject.y - (movingObject.height / 2), 
                movingObject.width, movingObject.height,
                sprite.x - (sprite.width / 2),
                sprite.y - (sprite.height / 2),
                sprite.width, sprite.height
            ) then
            if movingObject.myName == "tom" then
                -- happens when tom moves
                col.text = "collision:true"
                handleKitchenCollision(sprite)
				if tom.holdingBroom  and  sprite.myName=="broom" then
					collided=false
					break	
				end
            end
			collided = true
        end
    end

    for key, sprite in pairs(poops) do
        if detectCollision(
                movingObject.x - (movingObject.width / 2),
                movingObject.y - (movingObject.height / 2), 
                movingObject.width, movingObject.height,
                sprite.x - (sprite.width / 2),
                sprite.y - (sprite.height / 2),
                sprite.width, sprite.height
            ) then
            if movingObject.myName == "tom" then
                -- happens when tom moves
                col.text = "collision:true"
                handlePoopCollision(sprite)
            end
			--collided = true
        end
    end

    if collided then
        movingObject.InMotion = false
    end

	movingObject:translate(-dx, -dy)
	-- If no collision, move movingObject to the new position
	if direction == "left" and not collided then
		transition.to(movingObject, {time = timeForMoveInMilliseconds, x = movingObject.x - gridSize, onComplete = onCompletecallback})
	elseif direction == "right" and not collided then
		transition.to(movingObject, {time = timeForMoveInMilliseconds, x = movingObject.x + gridSize, onComplete = onCompletecallback})
	elseif direction == "up" and not collided then
		transition.to(movingObject, {time = timeForMoveInMilliseconds, y = movingObject.y - gridSize, onComplete = onCompletecallback})
	elseif direction == "down" and not collided then
		transition.to(movingObject, {time = timeForMoveInMilliseconds, y = movingObject.y + gridSize, onComplete = onCompletecallback})
	end
	collided=false
end

function moveTomLeft()
	moveInDirection( -moveSpeed, 0 , "left", tom )
end

function moveTomRight()
	moveInDirection( moveSpeed, 0, "right", tom )
end

function moveTomUp()
	moveInDirection( 0, -moveSpeed, "up", tom )
end

function moveTomDown()
	moveInDirection( 0, moveSpeed, "down", tom )
end

function moveRatLeft()
	moveInDirection( -moveSpeed, 0 , "left", rat )
end

function moveRatRight()
	moveInDirection( moveSpeed, 0, "right", rat )
end

function moveRatUp()
	moveInDirection( 0, -moveSpeed, "up", rat )
end

function moveRatDown()
	moveInDirection( 0, moveSpeed, "down", rat )
end

--handle keystrokes
local action = {}
local function moveCharacter()
	if detectCollision(tom.x-(tom.width/2), tom.y-(tom.height/2), tom.width, tom.height, pipe.x-(pipe.width/2), pipe.y-(pipe.height/2), pipe.width, pipe.height) then
		col.text = "collision:ture"
	else
		col.text = "collision:false"
	end
	local keyDown = false
	-- See if one of the selected action buttons is down and move the knight.
	if action["a"] or action["left"] then
		moveTomLeft()
		keyDown = true
	end
	if action["d"] or action["right"] then
		moveTomRight()
		keyDown = true
	end
	if action["w"] or action["up"] then
		moveTomUp()
		keyDown = true
	end
	if action["s"] or action["down"] then
		moveTomDown()
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
function detectCollision(x1, y1, width1, height1, x2, y2, width2, height2) 
    if x1 + width1 > x2 and x1 < x2 + width2 and y1 + height1 > y2 and y1 < y2 + height2 then 
        return true
    else
        return false
    end
end

local fireTimer

local function myLeftTouchListener( event )
    if ( event.phase == "began" ) then
		moveTomLeft()
		fireTimer = timer.performWithDelay( timeForMoveInMilliseconds+100, moveTomLeft, 0 )
        print( "object touched = " .. tostring(event.target) )  -- "event.target" is the touched object
	elseif ( event.phase == "ended") then
		timer.cancel( fireTimer )
    end
    return true  -- Prevents tap/touch propagation to underlying objects
end
offsetx=450
offsety=300

local paint = {
    type = "image",
    filename = "img/arrowLeft.png"
}
local myLeftButton = display.newRect( 300+offsetx, 300+offsety, 100, 100 )
myLeftButton.fill = paint

myLeftButton:addEventListener( "touch", myLeftTouchListener )  -- Add a "touch" listener to the obj

local function myRightTouchListener( event )
    if ( event.phase == "began" ) then
		moveTomRight()
		fireTimer = timer.performWithDelay( timeForMoveInMilliseconds+100, moveTomRight, 0 )
        print( "object touched = " .. tostring(event.target) )  -- "event.target" is the touched object
	elseif ( event.phase == "ended") then
		timer.cancel( fireTimer )
	end
    return true  -- Prevents tap/touch propagation to underlying objects
end
local paint = {
    type = "image",
    filename = "img/arrowRight.png"
}
local myRightButton = display.newRect( 500+offsetx, 300+offsety, 100, 100 )
myRightButton.fill = paint
myRightButton:addEventListener( "touch", myRightTouchListener )  -- Add a "touch" listener to the obj

local function myUpTouchListener( event )
    if ( event.phase == "began" ) then
		moveTomUp()
		fireTimer = timer.performWithDelay( timeForMoveInMilliseconds+100, moveTomUp, 0 )
        print( "object touched = " .. tostring(event.target) )  -- "event.target" is the touched object
	elseif ( event.phase == "ended") then
		timer.cancel( fireTimer )
    end
    return true  -- Prevents tap/touch propagation to underlying objects
end
local paint = {
    type = "image",
    filename = "img/arrowUp.png"
}
local myUpButton = display.newRect( 400+offsetx, 200+offsety, 100, 100 )
myUpButton.fill = paint
myUpButton:addEventListener( "touch", myUpTouchListener )  -- Add a "touch" listener to the obj

local function myDownTouchListener( event )
    if ( event.phase == "began" ) then
		moveTomDown()
		fireTimer = timer.performWithDelay( timeForMoveInMilliseconds+100, moveTomDown, 0 )
        print( "object touched = " .. tostring(event.target) )  -- "event.target" is the touched object
	elseif ( event.phase == "ended") then
		timer.cancel( fireTimer )
    end
    return true  -- Prevents tap/touch propagation to underlying objects
end
local paint = {
    type = "image",
    filename = "img/arrowDown.png"
}
local myDownButton = display.newRect( 400+offsetx, 400+offsety, 100, 100 )
myDownButton.fill = paint
myDownButton:addEventListener( "touch", myDownTouchListener )  -- Add a "touch" listener to the obj


local fireRatTimer
function gameloop()

	--moveRatInRandomDirection
	local direction = math.random(1,4)
	if direction==1 then
		moveRatRight()
	elseif direction==2 then
		moveRatLeft()
	elseif direction==3 then
		moveRatUp()
	elseif direction==4 then
		moveRatDown()
	end
end

fireRatTimer = timer.performWithDelay( timeForMoveInMilliseconds+100, gameloop, 0 )

--poop table
poops ={}

local poopTimer
function poop()
	local freeze={}
	freeze.x=rat.x
	freeze.y=rat.y
	newPoop = display.newGroup()
	newPoop.poop_frame1 = display.newImageRect( newPoop, "img/poop_frame1.png", gridSize, gridSize )
	newPoop.poop_frame2 = display.newImageRect( newPoop, "img/poop_frame2.png", gridSize, gridSize )
	newPoop.poop_frame2.isVisible=false
	newPoop.x = freeze.x
	newPoop.y = freeze.y
	newPoop.width=gridSize
	newPoop.height=gridSize
	newPoop.myName = "aPoop"
	table.insert(poops, newPoop)
end

poopTimer = timer.performWithDelay( 50000, poop, 0 )

local animationLoopTimer
function animationLoop()
	for key, sprite in pairs(poops) do
		if(sprite.isVisible) then
			if(sprite.poop_frame1.isVisible) then
				sprite.poop_frame1.isVisible=false
				sprite.poop_frame2.isVisible=true
			else
				sprite.poop_frame1.isVisible=true
				sprite.poop_frame2.isVisible=false				
			end
		end
	end
end
animationLoopTimer = timer.performWithDelay( 200, animationLoop, 0 )
--(done)
--amigojapan> Zcom: primero muevo el esprite sobre el otro 
--objecto(sin mostrarlo) luego si hay collision, consigo el 
--ID del otro objecto, y al final regreso a tom a suposicion 
--origuinal

--(fixed)why is there kokizami motion?
--(fixed)impede Tom from having many moves at once which takes him
--out of teh grid

--(done)block Tom from going out of the play area

--(fixed(you cant put a parameter in the oncomplete function in the --transition function, this was causing the obscure bug)
--keep tom (?and rat) inside grid area

--(done)make the rat and tom have sepperate moving  variables so they can move seperately

--(done)make tom take the broom

--handle the onbutton move event, it gets stuck now if you
--move your finger during touch


--add all sprites to a group so tom can be at the top of the group
--all the time