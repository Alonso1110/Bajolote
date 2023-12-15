// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información

function setAnimationSpeed() {
	if underWater image_speed = 0.5
	else image_speed = 1
}

function setHorizontalMovement(){
	var dir = bRight - bLeft
	
	if dir != 0 {
		if sprite_index != spriteJump and sprite_index != spriteHurt {
			if sprite_index != spriteRun image_index = 0
			sprite_index = spriteRun
		}
		var _move = dir*hspd
		if underWater _move *= 0.5
		x += _move
		if place_meeting(x,y,oBarrier) x -= _move
		image_xscale = dir		
		
	} else if sprite_index != spriteJump and sprite_index != spriteHurt sprite_index = spriteIdle
	
}

function setVerticalMovement(){
	if place_meeting(x,y+vspeed,oBarrier) {
		var onestep = sign(vspeed)
		if onestep != 0 while place_empty(x,y+onestep,oBarrier) y+=onestep
		else while place_meeting(x,y+onestep,oBarrier) y-=1
		vspeed = 0
		if onestep == 1 {
			instance_create_layer(x,y,"Instances",oDust)
			if sprite_index == spriteJump sprite_index = spriteIdle
		}
	}
	
	if place_empty(x,y+1,oBarrier) {
		if underWater gravity = 0.04
		else gravity = 0.8
	} else {
		gravity = 0 
		vspeed = 0
	}
	
	if bSpace and place_meeting(x,y+1,oBarrier) and place_empty(x,y-15,oBarrier){
		if place_meeting(x,y,oSeaArea) vspeed = -3
		else vspeed = -15
		sprite_index = spriteJump
	}
	
}


function setSpecialMoves(){

	if cRight {
		if underWater {	// UW DASH
			//swimTargetX = mouse_x
			//swimTargetY = mouse_y
			gravity = 0
			vspeed = 0
			hspeed = 0
			speed = 5
			direction = point_direction(x,y,mouse_x,mouse_y)
			if place_meeting(x+hspeed,y+vspeed,oBarrier) speed = 0
			else {
				playerState = PlayerStateSwim	
				alarm[0] = 20
			}
		} else {	// OW DASH
			gravity = 0
			vspeed = 0
			playerState = PlayerStateDash	
			alarm[0] = 10
		}
	}
	
	// UW BUBBLE
	if cLeft and underWater {
		playerState = PlayerStateBubbleThrow
	}
	
	
	
	
	
	
	
}