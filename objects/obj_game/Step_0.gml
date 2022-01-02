viewX = camera_get_view_x(view_camera[0]);
viewY = camera_get_view_y(view_camera[0]);
switch(room){
	case rm_start:
		if(keyboard_check_pressed(vk_enter)){room_goto(rm_game);}
		break;
	case rm_game:
		if (keyboard_check_pressed(ord("R"))) {
			audio_stop_sound(BGM);
			room_restart();}
		break;
}
