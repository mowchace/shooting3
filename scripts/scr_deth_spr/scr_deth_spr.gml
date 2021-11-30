function deth_spr(_spr,_bomb_num){
	var _inst = instance_create_layer(x,y,"Instances",obj_deth)
	with(_inst){
		sprite_index = _spr;
		if(_bomb_num != 0){
			bomb_flag = true;
			obj = obj_par_bomb;
			spd = other.Attackspeed;
			faction = other.faction
			creater = other.id;
		}
	}
}