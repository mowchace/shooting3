// desc pause the game
if(keyboard_check_pressed(vk_escape)){
	global.gamePaused = !global.gamePaused;
	show_debug_message(global.gamePaused);
	if(global.gamePaused){
		with(obj_par_attack){
			other.Pausebltspeed = speed;
			speed = 0;
		}
	}else{
		with(obj_par_attack){
			speed = other.Pausebltspeed;
		}
	}
}