/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

//Draw Health Icons
for (var i = 0; i < LifePoints; i++) {
	draw_sprite_ext(sprAjoloteIcon,2,128+i*40,64,0.5,0.5,0,c_white,1)	
}
//Draw Oxygen bar

for (var i = 0; i < OxygenBar; i++) {
	draw_sprite(sprBar,0,390+i,680)	
}
for (var i = 0; i < 500-OxygenBar; i++) {
	draw_sprite(sprBar,1,390+OxygenBar+i,680)	
}

draw_sprite(sprAjoloteIcon,IconImgIdx,390+OxygenBar,680)




