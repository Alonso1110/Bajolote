// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function PlayerStateDash(){
	hspeed = image_xscale*hspd*2
	if place_meeting(x+hspeed,y,oBarrier) {
		playerState = PlayerStateIdle
		speed = 0	
	} 
}