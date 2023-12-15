/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

if choose(true,false) {
	var _bub = instance_create_layer(irandom_range(-8,8)+x,y,"Instances",oBubble)
	with _bub {
		randomize()
		image_index = irandom_range(0,2)
		hspeed = 0
		vspeed = -2
		torrent = true
	}

	_bub.alarm[0] = distance

}





