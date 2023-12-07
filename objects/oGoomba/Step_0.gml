/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

if place_empty(x+dir*w,y,oBarrier) and !place_empty(x+dir*w,y+1,oBarrier){
		x += dir*image_speed;
		image_xscale = dir;
} else dir = -1*dir; 






