// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function getInput(){
	bRight = keyboard_check(ord("D")) 
	bLeft = keyboard_check(ord("A")) 
	bUp = keyboard_check(ord("W")) 
	bDown = keyboard_check(ord("S")) 
	bSpace = keyboard_check(vk_space)
	
	cRight = mouse_check_button_pressed(mb_right)
	cLeft = mouse_check_button_pressed(mb_left)
	cLeftR = mouse_check_button_released(mb_left)
}