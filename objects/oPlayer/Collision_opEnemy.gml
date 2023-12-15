/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if other.captured != 0 {
	vspeed = -3
	other.captured = 0
} else { 
	if playerState != PlayerStateHarmed {
		if oPlayerController.LifePoints == 1 {
			room_restart()
			oPlayerController.LifePoints = 4
		} else {
			oPlayerController.LifePoints -= 1
			playerState = PlayerStateHarmed
			alarm[0] = 180
		}
	}
	
	
}






