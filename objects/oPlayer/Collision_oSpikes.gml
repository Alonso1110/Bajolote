/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

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
	
	






