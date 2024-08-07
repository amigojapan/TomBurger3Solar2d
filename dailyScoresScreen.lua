
require("i18n_dict")
local composer = require( "composer" )

local scene = composer.newScene()

-- -----------------------------------------------------------------------------------
-- Code outside of the scene event functions below will only be executed ONCE unless
-- the scene is removed entirely (not recycled) via "composer.removeScene()"
-- -----------------------------------------------------------------------------------

local function gotoGame()
	composer.gotoScene( "game" )
end

local function gotoHighScores()
	composer.gotoScene( "highscores" )
end


-- -----------------------------------------------------------------------------------
-- Scene event functions
-- -----------------------------------------------------------------------------------

-- create()
function updateScene(sceneGroup)
	local background = display.newImageRect( sceneGroup, "background.png", 1400,800 )
	background.x = display.contentCenterX
	background.y = display.contentCenterY
	language=composer.getVariable( "language" )
	print("language:"..language)
	translate=i18n_setlang(language)
	local burgersMade = composer.getVariable( "burgersMade" )
	local cheeseBurgersMade = composer.getVariable( "cheeseBurgersMade" )
	local frenchFriesMade = composer.getVariable( "frenchFriesMade" )
	local ordersBurgers = composer.getVariable( "ordersBurgers" )
	local ordersCheeseBurgers = composer.getVariable( "ordersCheeseBurgers" )
	local ordersFrenchFries = composer.getVariable( "ordersFrenchFries" )
	local cleanlynessPoints = composer.getVariable( "cleanlynessPoints" )
	totalPoints=0
	Points=0
	wastePoints=0
	inclmpleteOderPoints=0
	bonus=0
	offsetY=100
	--**burgers
	Points=burgersMade * 30
	local lableBurgersMade = display.newText( sceneGroup, translate["Made Hamburgers"] .. burgersMade .. "✔" .. tostring(Points) .. "pt" , display.contentCenterX, offsetY, "fonts/ume-tgc5.ttf", 50 )
	lableBurgersMade:setTextColor( 1, 1, 0 )
	offsetY=offsetY+55
	local lableOrdersBurgers = display.newText( sceneGroup, translate["Odered Hamburgers"] .. ordersBurgers , display.contentCenterX, offsetY, "fonts/ume-tgc5.ttf", 50 )
	lableOrdersBurgers:setTextColor( 1, 1, 0 )
	offsetY=offsetY+55
	if ordersBurgers < burgersMade then
		wastePoints=(ordersBurgers - burgersMade)*30
		local lableWastedHamburgers = display.newText( sceneGroup, translate["Waste"] .. tostring(wastePoints).."pt" , display.contentCenterX, offsetY, "fonts/ume-tgc5.ttf", 50 )
		lableWastedHamburgers:setTextColor( 1, 0, 0 )
	elseif ordersBurgers > burgersMade then
		inclmpleteOderPoints=(burgersMade - ordersBurgers)*50
		local lableIncompleteOrders = display.newText( sceneGroup, translate["Incomplete Orders"] .. tostring(inclmpleteOderPoints).."pt" , display.contentCenterX, offsetY, "fonts/ume-tgc5.ttf", 50 )
		lableIncompleteOrders:setTextColor( 1, 0, 0 )
	else
		bonus=500
		local lablePerfectBalanceBonus = display.newText( sceneGroup, translate["Perfect Balance Bonus"] .. "500pt" , display.contentCenterX, offsetY, "fonts/ume-tgc5.ttf", 50 )
		lablePerfectBalanceBonus:setTextColor( 1, 1, 0 )
	end
	totalPoints=Points+wastePoints+inclmpleteOderPoints+bonus
	Points=0
	wastePoints=0
	inclmpleteOderPoints=0
	bonus=0
	--**Cheeseburgers
	offsetY=offsetY+55
	local lableCheeseBurgersMade = display.newText( sceneGroup, translate["Made Cheeseburgers"] .. cheeseBurgersMade .. "✔" .. tostring(cheeseBurgersMade * 30) .. "pt" , display.contentCenterX, offsetY, "fonts/ume-tgc5.ttf", 50 )
	lableCheeseBurgersMade:setTextColor( 1, 1, 0 )
	offsetY=offsetY+55
	local lableOrdersCheeseBurgers = display.newText( sceneGroup, translate["Odered Cheeseburgers"] .. ordersCheeseBurgers , display.contentCenterX, offsetY, "fonts/ume-tgc5.ttf", 50 )
	lableOrdersCheeseBurgers:setTextColor( 1, 1, 0 )
	offsetY=offsetY+55
	if ordersCheeseBurgers < cheeseBurgersMade then
		wastePoints=(ordersCheeseBurgers - cheeseBurgersMade)*30
		local lableWastedCheeseBurgers = display.newText( sceneGroup, translate["Waste"] .. tostring(wastePoints).."pt" , display.contentCenterX, offsetY, "fonts/ume-tgc5.ttf", 50 )
		lableWastedCheeseBurgers:setTextColor( 1, 0, 0 )
	elseif ordersCheeseBurgers > cheeseBurgersMade then
		inclmpleteOderPoints=(cheeseBurgersMade - ordersCheeseBurgers)*50
		local lableIncompleteOrdersCB = display.newText( sceneGroup, translate["Incomplete Orders"] .. tostring(inclmpleteOderPoints).."pt" , display.contentCenterX, offsetY, "fonts/ume-tgc5.ttf", 50 )
		lableIncompleteOrdersCB:setTextColor( 1, 0, 0 )
	else
		bonus=500
		local lablePerfectBalanceBonusCB = display.newText( sceneGroup, translate["Perfect Balance Bonus"] .. "500pt" , display.contentCenterX, offsetY, "fonts/ume-tgc5.ttf", 50 )
		lablePerfectBalanceBonusCB:setTextColor( 1, 1, 0 )
	end
	totalPoints=totalPoints+Points+wastePoints+inclmpleteOderPoints+bonus
	Points=0
	wastePoints=0
	inclmpleteOderPoints=0
	bonus=0
	--**frenchFries
	offsetY=offsetY+55
	local lableFrenchFriesMade = display.newText( sceneGroup, translate["Made Frenchfries"] .. frenchFriesMade .. "✔" .. tostring(frenchFriesMade * 10) .. "pt" , display.contentCenterX, offsetY, "fonts/ume-tgc5.ttf", 50 )
	lableFrenchFriesMade:setTextColor( 1, 1, 0 )
	offsetY=offsetY+55
	local lableordersFrenchFries = display.newText( sceneGroup, translate["Odered Frenchfries"] .. ordersFrenchFries , display.contentCenterX, offsetY, "fonts/ume-tgc5.ttf", 50 )
	lableordersFrenchFries:setTextColor( 1, 1, 0 )
	offsetY=offsetY+55
	if ordersFrenchFries < frenchFriesMade then
		wastePoints=(ordersFrenchFries - frenchFriesMade)*10
		local lableWastedFF = display.newText( sceneGroup, translate["Waste"] .. tostring(wastePoints).."pt" , display.contentCenterX, offsetY, "fonts/ume-tgc5.ttf", 50 )
		lableWastedFF:setTextColor( 1, 0, 0 )
	elseif ordersFrenchFries > frenchFriesMade then
		inclmpleteOderPoints=(frenchFriesMade - ordersFrenchFries)*20
		local lableIncompleteOrdersFF = display.newText( sceneGroup, translate["Incomplete Orders"] .. tostring(inclmpleteOderPoints).."pt" , display.contentCenterX, offsetY, "fonts/ume-tgc5.ttf", 50 )
		lableIncompleteOrdersFF:setTextColor( 1, 0, 0 )
	else
		bonus=500
		local lablePerfectBalanceBonusFF = display.newText( sceneGroup, translate["Perfect Balance Bonus"] .. "500pt" , display.contentCenterX, offsetY, "fonts/ume-tgc5.ttf", 50 )
		lablePerfectBalanceBonusFF:setTextColor( 1, 1, 0 )
	end
	totalPoints=totalPoints+Points+wastePoints+inclmpleteOderPoints+bonus
	Points=0
	wastePoints=0
	inclmpleteOderPoints=0
	bonus=0
	offsetY=offsetY+50
	local lableTotalPoints = display.newText( sceneGroup, translate["Cleanlyness"] .. tostring(cleanlynessPoints) , display.contentCenterX, offsetY, "fonts/ume-tgc5.ttf", 50 )
	if cleanlynessPoints > 0 then
		lableTotalPoints:setTextColor( 1, 1, 0 )
	else
		lableTotalPoints:setTextColor( 1, 0, 0 )
	end
	totalPoints=totalPoints+cleanlynessPoints
	Points=0
	wastePoints=0
	inclmpleteOderPoints=0
	bonus=0
	offsetY=offsetY+100

	local lableTotalPoints = display.newText( sceneGroup, "トータルポイント：" .. tostring(totalPoints) , display.contentCenterX, offsetY, "fonts/ume-tgc5.ttf", 75 )
	if totalPoints > 0 then
		lableTotalPoints:setTextColor( 1, 1, 0 )
	else
		lableTotalPoints:setTextColor( 1, 0, 0 )
	end
	translate=i18n_setlang("English")
--translate=i18n_setlang("Spanish")
--print(translate["hw"])
--print(translate["gw"])
--translate=i18n_setlang("Japanese")
--print(translate["hw"])
--print(translate["gw"])
	local playButton = display.newText( sceneGroup, "Start", 100, 100, "fonts/ume-tgc5.ttf", 44 )
	playButton:setFillColor( 0.82, 0.86, 1 )
	playButton:addEventListener( "tap", gotoGame )
end
function scene:create( event )
	local sceneGroup = self.view
	-- Code here runs when the scene is first created but has not yet appeared on screen

	
end


-- show()
function scene:show( event )

	local sceneGroup = self.view
	local phase = event.phase

	if ( phase == "will" ) then
		-- Code here runs when the scene is still off screen (but is about to come on screen)
		
	elseif ( phase == "did" ) then
		-- Code here runs when the scene is entirely on screen
		print("Removed scene")
		composer.removeScene( "game" )
		updateScene(sceneGroup)
	end
end


-- hide()
function scene:hide( event )

	local sceneGroup = self.view
	local phase = event.phase

	if ( phase == "will" ) then
		-- Code here runs when the scene is on screen (but is about to go off screen)

	elseif ( phase == "did" ) then
		-- Code here runs immediately after the scene goes entirely off screen

	end
end

-- destroy()
function scene:destroy( event )

	local sceneGroup = self.view
	-- Code here runs prior to the removal of scene's view

end


-- -----------------------------------------------------------------------------------
-- Scene event function listeners
-- -----------------------------------------------------------------------------------
scene:addEventListener( "create", scene )
scene:addEventListener( "show", scene )
scene:addEventListener( "hide", scene )
scene:addEventListener( "destroy", scene )
-- -----------------------------------------------------------------------------------

return scene
