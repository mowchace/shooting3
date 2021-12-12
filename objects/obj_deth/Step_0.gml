if(image_index > image_number - 1){
	image_index = image_number - 1;
	LifeTime--;
}
if(LifeTime <= 0){
	if(bomb_flag == true){
		create_attack(obj,ATK,direction,spd,faction,creater,input_hide,attack_positionX,attack_positionY,attack_particlepositionX,attack_particlepositionY);
		instance_destroy();
	}else{
		image_alpha -= 0.1;
		if(image_alpha <= 0){
			instance_destroy();
		}
	}
}