/// @description
lerpProgress += (1-lerpProgress)/50;
textProgress += global.textSpeed;

x1=lerp(x1,x1Target,lerpProgress);
x2=lerp(x2,x2Target,lerpProgress);

//Cycle through responses
keyUp = keyboard_check_pressed(vk_up)||keyboard_check_pressed(ord("W"));
keyDown = keyboard_check_pressed(vk_down)||keyboard_check_pressed(ord("S"));
responseSelected += (keyDown - keyUp);
var _max = array_length(responses)-1;
var _min = 0;
if(responseSelected < _max)responseSelected = _min;
if(responseSelected > _min)responseSelected = _max;


if(keyboard_check_pressed(vk_space)){
	var _messagelength = string_length(textmessage);
	if(textProgress >= _messagelength){
		instance_destroy();
		if(instance_exists(obj_textQueued)){
			with(obj_textQueued){ticket--;}
		}else{
			/*with(obj_player){state = laststate;}
			with(obj_par_enemy){state = laststate;}
			*/
			global.gamePaused = false;
		}
	}else{
		if(textProgress > 2){
			textProgress = _messagelength;
		}
	}
}