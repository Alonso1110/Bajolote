/// @description Inserte aquí la descripción
// Puede escribir su código en este editor










// Inherit the parent event
event_inherited();

if captured == 0 {
	if place_meeting(x,y-1,oBarrier) or place_meeting(x,y+1,oBarrier) or place_meeting(x-1,y,oBarrier) or place_meeting(x+1,y,oBarrier) {
		gravity = 0 
		vspeed = 0
	} else {
		gravity = 0.04
	}
}