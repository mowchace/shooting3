function create_emotion(_emotiontype){
	if(!instance_exists(obj_emotions)){
		var _emo = instance_create_layer(x,y,"Instances",obj_emotions)
		with(_emo){
			target = other;
			changeemotion = _emotiontype;
		}
	}
}