/// @description
lerpProgress += (1-lerpProgress)/50;
textProgress += global.textSpeed;

x1=lerp(x1,x1Target,lerpProgress);
x2=lerp(x2,x2Target,lerpProgress);

if(keyboard_check_pressed(vk_space)){
	var _messagelength = string_length(textmessage);
	if(textProgress >= _messagelength){
		instance_destroy();
		if(instance_exists(obj_textQueued)){
			with(obj_textQueued){ticket--;}
		}else{
			with(obj_player){state = laststate;}
		}
	}else{
		if(textProgress > 2){
			textProgress = _messagelength;
		}
	}
}