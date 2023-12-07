// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function PlayerStateBubbleThrow(){
	
	setVerticalMovement()
	hspd = 1
	setHorizontalMovement()
	
	if cLeftR {
		var _bubble = instance_create_layer(x,y,"Instances",oBubble)
		_bubble.direction = point_direction(x,y,mouse_x,mouse_y)
		_bubble.image_xscale = bubbleSize
		_bubble.image_yscale = bubbleSize
		bubbleSize = 0
		hspd = 3
		playerState = PlayerStateIdle
	}
}