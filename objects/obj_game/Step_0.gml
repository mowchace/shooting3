//update camera position
viewX = camera_get_view_x(view_camera[0]);
viewY = camera_get_view_y(view_camera[0]);
if(room != rm_start){
	if (keyboard_check_pressed(ord("R"))) {
		with(obj_players_status){HP = MaxHP;}
		room_restart();
	}
}

switch(room){
	case rm_start:
		if(keyboard_check_pressed(vk_enter)){
			room_goto(rm_river);}
		break;
}
