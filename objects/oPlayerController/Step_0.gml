/// @description Inserte aquí la descripción
// Puede escribir su código en este editor


if global.gamePaused {
	//getInput()
	Down = keyboard_check_pressed(ord("S")) or keyboard_check_pressed(vk_down)
	Up = keyboard_check_pressed(ord("W")) or keyboard_check_pressed(vk_up)
	
	OptionSelected += Down - Up
	var _max = array_length_1d(PauseMenuOptions)-1
	var _min = 0
	if OptionSelected > _max OptionSelected = _min
	if OptionSelected < _min OptionSelected = _max
	
	if keyboard_check_pressed(vk_space){
		switch OptionSelected {
			case 0: global.gamePaused = false; break;	
			case 1: game_restart(); break;	
			case 2: game_end(); break;	
		}
	}
	
	
} else {
	if instance_exists(oPlayer) { 
		if !oPlayer.underWater {
			OxygenBar -= 0.02
		} else {
			OxygenBar += 0.02
		}

		if OxygenBar > 500 or OxygenBar < 0 game_restart()

		if abs(OxygenBar - 250) > 200 IconImgIdx = 2
		else if abs(OxygenBar - 250) > 100 IconImgIdx = 1
		else IconImgIdx = 0
	} 

}