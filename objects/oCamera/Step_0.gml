/// @description Inserte aquí la descripción
// Puede escribir su código en este editor


#region Update Follow

if instance_exists(oPlayer) follow = oPlayer

#endregion

#region Update Destination

if (instance_exists(follow)) { 
	xTo = follow.x;	
	yTo = follow.y;	
}

#endregion

#region Update Position

	x += (xTo - x) * 0.06;
	y += (yTo - y) * 0.06;

#endregion

#region Keep Camera Centered

	x = clamp(x, viewWidthHalf, room_width - viewWidthHalf);
	y = clamp(y, viewHeightHalf, room_height - viewHeightHalf);

#endregion

camera_set_view_pos(cam, x - viewWidthHalf, y - viewHeightHalf);






