/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

if !oPlayer.underWater {
	OxygenBar -= 0.05
} else {
	OxygenBar += 0.05
}

if OxygenBar > 500 or OxygenBar < 0 game_restart()


global.shells = 0

