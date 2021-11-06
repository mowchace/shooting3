function enemy_state_attack(){
	/*if(my_slash == noone){
		my_slash = instance_create_layer(
			x+image_xscale*16,y,"Instances",obj_meat
		);
		my_slash.creater = id;
		my_slash.image_xscale = image_xscale;
		image_index = 0;
	}
	
	//Transition Triggers
	if(image_index > image_number-1){state = states.alert;}
	*/
	if(instance_exists(obj_par_ally) && cooltime <= 0){
		var _dir = point_direction(x,y,obj_par_ally.x,obj_par_ally.y)
		create_bullet(atktype,attack,_dir,atkspd,faction,id,noone);
		cooltime = cooldown;
		if(!collision_circle(x,y,32,obj_player,0,0)){
			state = states.alert;
		}
	}else{
		state = states.idle;
	}
	//Sprite
	sprite_index = spr_enemy1;
}