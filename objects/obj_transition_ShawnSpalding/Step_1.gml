/// @description
//with(obj_player){state = playerstatetransition}
#region shawnspalding
if(leading = OUT){
	global.gamePaused = true;
	percent = min(1,percent + TRANSITION_SPEED);
	if(percent >= 1){
		room_goto(target);
		leading = IN;
	}
}else{
	percent = max(0,percent - TRANSITION_SPEED);
	//If screen fully revealed
	if(percent <= 0){
		//with(obj_player){state = playerstate_free;}
		//global.gamePaused = false;
		global.gamePaused = false;
		instance_destroy();
	}
}
//show_debug_message("leading"+string(leading));
#endregion