/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

//Draw Bubbles
draw_sprite(sprBubbleCase,0,16,16)

//Draw Health Icons
for (var i = 0; i < LifePoints; i++) {
	draw_sprite_ext(sprAjoloteIcon,0,180+i*80,48,1,1,0,c_white,1)	
}

//Draw 

//Draw Oxygen bar

for (var i = 0; i < OxygenBar; i++) {
	draw_sprite(sprBar,0,390+i,680)	
}
for (var i = 0; i < 500-OxygenBar; i++) {
	draw_sprite(sprBar,1,390+OxygenBar+i,680)	
}

draw_sprite(sprMarco,0,382,677)

draw_sprite(sprAjoloteIcon,IconImgIdx,390+OxygenBar,680)

#region Pausing
if global.gamePaused {
	if !surface_exists(pauseSurface) {
		pauseSurface = surface_create(surface_get_width(application_surface),surface_get_height(application_surface))
		surface_set_target(pauseSurface)
		draw_surface(application_surface,0,0)
		surface_reset_target()
	
		instance_deactivate_all(true);	
		
		
	}
	draw_surface(pauseSurface,0,0)	
	
	draw_set_alpha(0.9)
	draw_set_color(c_black);
	draw_rectangle(0,0,surface_get_width(application_surface),surface_get_height(application_surface),false)
	draw_set_alpha(1)	
	
	
	draw_set_halign(fa_center);
	draw_set_valign(fa_top);
	draw_set_color(c_black);
	draw_set_font(fontPixelMain);

	var _print = "PAUSE"
	for (var i = 0; i < array_length_1d(PauseMenuOptions); i++) {
			_print += "\n";
			if i == OptionSelected _print += "> "	
			_print += PauseMenuOptions[i]
			if i == OptionSelected _print += " <"	
				 
	}

	draw_text(surface_get_width(application_surface)/2 , surface_get_height(application_surface)/2 - 32, _print)
	draw_set_color(#de266a)
	draw_text(surface_get_width(application_surface)/2 , surface_get_height(application_surface)/2 - 33, _print)
	
} else {
	surface_free(pauseSurface)
	instance_activate_all()
}	

#endregion



