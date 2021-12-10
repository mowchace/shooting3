function newTextBox(_textmessage,_background,_responses){
	var _obj;
	if(instance_exists(obj_text)){
		_obj = obj_textQueued
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
		if(argument_count > 1){background = _background;
		}else{background = 0;}
		if(argument_count > 2){
			//******
			responses = _responses;
			for( var _i = 0;_i < array_length(responses);_i++){
				var _markerPosition = string_pos(":",responses[_i]);
				responseScript[_i] = string_copy(responses[_i],1,_markerPosition-1);
				show_debug_message("responseScript[_i]:"+string(string_copy(responses[_i],1,_markerPosition-1)));
				show_debug_message("responseScript[_i]:"+string(responseScript[_i]));
				//******
				responseScript[_i] = real(responseScript[_i]);
				responses[_i] = string_delete(responses[_i],1,_markerPosition);
				breakpoint = 10;
			}
		}else{
			responses = [-1];
			responseScript = [-1];
		}
	}
	global.gamePaused = true;
	/*with(obj_player){
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
	*/
}