function play_sound_after(_SE,_time){
	var _inst = instance_create_layer(x,y,"Instances",obj_SE)
	with(_inst){
		playsound = _SE;
		time = _time;
	}
}