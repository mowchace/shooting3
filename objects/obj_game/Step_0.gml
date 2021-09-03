viewX = camera_get_view_x(view_camera[0]);
viewY = camera_get_view_y(view_camera[0]);
switch(room){
	case rm_start:
		if(keyboard_check_pressed(vk_enter)){room_goto(rm_game);}
		break;
	case rm_game:
		if (keyboard_check_pressed(ord("R"))) {room_restart();}
		break;
}
/*if(keyboard_check_pressed(vk_escape)){
	global.gamePaused = !global.gamePaused;
	if(global.gamePaused){
		with (obj_faction) {
			other.gamePausedImage = n_spd;
			n_spd = 0;
		}
	} else {
		with (obj_faction) {
			n_spd = other.gamePausedImage;
		}
	}
	
}*/