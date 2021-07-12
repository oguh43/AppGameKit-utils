
// Project: agkui-dev
// Created: 2021-07-12

// show all errors
SetErrorMode(2)

// set window properties
SetWindowTitle( "agkui-dev" )
SetWindowSize( 1024, 768, 0 )
SetWindowAllowResize( 1 ) // allow the user to resize the window

// set display properties
SetVirtualResolution( 1024, 768 ) // doesn't have to match the window
SetOrientationAllowed( 1, 1, 1, 1 ) // allow both portrait and landscape on mobile devices
SetSyncRate( 30, 0 ) // 30fps instead of 60 to save battery
SetScissor( 0,0,0,0 ) // use the maximum available screen space, no black borders
UseNewDefaultFonts( 1 ) // since version 2.0.22 we can use nicer default fonts





#include "agku.agc"




type scene
	scType as string
	properties as properties
	objects as object
endtype
type properties
	extend as string
	x as integer
endtype
type object
	buttons as button[]
	sliders as slider[]
	texts as text[]
endtype
type internalImage
	img as string
	id as integer
endtype
type button
	internalId as integer
	x as integer
	y as integer
	imgUp as internalImage
	imgDown as internalImage
	agkId as integer
	color as color
	size as integer
	content as string
	visible as integer
	label as string
endtype
type slider
	x as integer
	y as integer
	calcFunc as String
	mode as string
	startX as integer
	startY as integer
	spriteMain as internalSprite
	spriteSmall as internalSprite
	label as string
endtype
type text
	internalId as integer
	x as integer
	y as integer
	agkId as integer
	content as string
	wordWrap as wordWrap
	color as color
	angle as integer
	depth as integer
	size as integer
	visible as integer
	font as font
	label as string
endtype
type wordWrap
	mode as string
	separator as string
endtype
type color
	red as integer
	green as integer
	blue as integer
	alpha as integer
endtype
type font
	id as integer
	file as string
endtype
type internalSprite
	file as string
	id as integer
	x as integer
	y as integer
	angle as integer
endtype
json as scene[]
json.load("structure.json")

do
	print(json.length)
	print(json[0].objects.buttons[0].label)
    Print( ScreenFPS() )
    Sync()
loop
