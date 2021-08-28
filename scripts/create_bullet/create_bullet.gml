function create_bullet(_objtype,_atk,_dir,_spd,_faction,_id){
	var _inst = instance_create_layer(x,y-5,"Instances",_objtype);
	with (_inst){
		direction = _dir;
		image_angle = _dir;
		speed = _spd;
		attack = _atk;
		faction = _faction;
		creater = _id;
		if(faction == factions.enemy) image_blend = c_red;
	}
}