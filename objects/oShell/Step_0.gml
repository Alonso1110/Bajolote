/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

if gravityActive {
	if place_meeting(x,y+vspeed,oBarrier) {
		var onestep = sign(vspeed)
		if onestep != 0 while place_empty(x,y+onestep,oBarrier) y+=onestep
		else while place_meeting(x,y+onestep,oBarrier) y-=1
		vspeed = 0
		if onestep == 1 instance_create_layer(x,y,"Instances",oDust)
	}
	
	if place_empty(x,y+1,oBarrier) {
		gravity = 0.04
	} else {
		gravity = 0 
		vspeed = 0
	}
}







