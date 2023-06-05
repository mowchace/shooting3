function create_reflect_attack(_atk,_dir,_spd,_reflect_num,_faction,_id,_attackpositionX,_attackpositionY){
//direction check and add direction.
//choose direction Leap(180-_dir_-180 = -_dir) or refrect(_dir-180)
_dir = (choose(-_dir,_dir-180))+irandom_range(-30,30);
//add reflect_num.
_reflect_num += 1;
//gunflash
audio_play_sound(SE_bullet_reflect,1,0);

//create bullet setting with Instance_layer
_inst = instance_create_layer(_attackpositionX,_attackpositionY,"Instances",obj_reflect);
//add bullet status
with (_inst){
	direction = _dir;
	image_angle = _dir;
	baseSpeed = _spd;
	reflect_num = _reflect_num;
	attack = _atk;
	faction = _faction;
	creater = _id;
	if(faction == factions.enemy) image_blend = c_red;
}
}