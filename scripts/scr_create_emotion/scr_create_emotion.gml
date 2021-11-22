function create_emotion(_emotiontype){
	// need fix 
	if(collision_rectangle(x+10,y+10,x-5,y-10,obj_emotions,0,1) == noone){
		var _emo = instance_create_layer(x,y,"Instances",obj_emotions)
		with(_emo){
			target = other;
			changeemotion = _emotiontype;
		}
	} else {
		with(obj_emotions){
			target = other;
			changeemotion = _emotiontype;
		}
	}
}