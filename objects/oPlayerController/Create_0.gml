/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

LifePoints = 4
OxygenBar = 250

IconImgIdx = 0
//alarm[0] = 20

global.shells = 0
	
global.gamePaused = false
pauseSurface = noone
PauseMenuOptions = ["Continue", "Reset", "Quit"]
OptionSelected = 0


global.doors = ds_map_create()
ds_map_add(global.doors,0,false) //door0 is not open
ds_map_add(global.doors,1,false) //door1 is not open





