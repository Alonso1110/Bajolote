// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function PlayerStateSwim(){
	if place_meeting(x+hspeed,y+vspeed,oBarrier) {
		playerState = PlayerStateIdle
		if vspeed > 1 {
			instance_create_layer(x,y,"Instances",oDust)
			if sprite_index == spriteJump sprite_index = spriteIdle	
		}
		speed = 0	
	}
}