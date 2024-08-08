require("i18n_dict")
local composer = require( "composer" )

local scene = composer.newScene()

-- -----------------------------------------------------------------------------------
-- Code outside of the scene event functions below will only be executed ONCE unless
-- the scene is removed entirely (not recycled) via "composer.removeScene()"
-- -----------------------------------------------------------------------------------

print( "ORIENTATION: "..system.orientation )

local function gotoGameEnglish()
	composer.setVariable( "Difficulty", 1 )
	composer.gotoScene( "game" )
end

local function gotoGameJapanese()
	composer.setVariable( "Difficulty", 2 )
	composer.gotoScene( "game" )
end

local function gotoGameSpanish()
	composer.setVariable( "Difficulty", 3 )
	composer.gotoScene( "game" )
end

-- -----------------------------------------------------------------------------------
-- Scene event functions
-- -----------------------------------------------------------------------------------

-- create()
function scene:create( event )

	local sceneGroup = self.view
	-- Code here runs when the scene is first created but has not yet appeared on screen

	language=composer.getVariable( "language" )
	print("language:"..language)
	translate=i18n_setlang(language)
	local background = display.newImageRect( sceneGroup, "background.png", 1400,800 )
	background.x = display.contentCenterX
	background.y = display.contentCenterY
	--local title = display.newImageRect( sceneGroup, "img/tom burger 3 title.png", 676, 97 )
	--title.x = display.contentCenterX
	--title.y = 200
	local lblDifficulty = display.newText( sceneGroup, translate["Difficulty"], display.contentCenterX, 200, "fonts/ume-tgc5.ttf", 75 )
	lblDifficulty:setFillColor( 1, 1, 0 )

	offsetY=500
	local startButtonEnglish = display.newText( sceneGroup, translate["Easy"], display.contentCenterX, offsetY, "fonts/ume-tgc5.ttf", 44 )
	startButtonEnglish:setFillColor( 0.82, 0.86, 1 )
	startButtonEnglish:addEventListener( "tap", gotoGameEnglish )

	offsetY=offsetY+55
	local startButtonJapanese = display.newText( sceneGroup, translate["Medium"], display.contentCenterX, offsetY, "fonts/ume-tgc5.ttf", 44 )
	startButtonJapanese:setFillColor( 0.82, 0.86, 1 )
	startButtonJapanese:addEventListener( "tap", gotoGameJapanese )

	offsetY=offsetY+55
	local startButtonSpanish = display.newText( sceneGroup, translate["Hard"], display.contentCenterX, offsetY, "fonts/ume-tgc5.ttf", 44 )
	startButtonSpanish:setFillColor( 0.82, 0.86, 1 )
	startButtonSpanish:addEventListener( "tap", gotoGameSpanish )

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
