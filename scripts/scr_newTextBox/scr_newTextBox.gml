function newTextBox(_textmessage,_background){
	var _obj;
	if(instance_exists(obj_text)){
		_obj = obj_textQueued
		show_debug_message("here1")
	}else{
		_obj = obj_text;
	}
	with(instance_create_layer(0,0,"Instances",_obj)){
		textmessage = _textmessage;
		if(instance_exists(other)){
			originInstance = other.id;
		}else{
			originInstance = noone;
		}
		if(_background != noone){
			background = _background;
		}else{
			background = 0;
		}
		with(obj_player){
			if(state != stateLocked){
				laststate = state;
				state = stateLocked;
			}
		}
		with(obj_par_enemy){
			if(state != states.stop){
				laststate = state;
				state = states.stop;
			}
		}
	}
}