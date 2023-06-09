if(count <= bomb_num){
	var _rangePlus = irandom_range(-10*count,10*count);
	var _inst = instance_create_layer(x+_rangePlus,y+_rangePlus,"Instances",obj_bomb);
	with (_inst){
		attack  = other.attack;
		faction = other.faction;
		creater = other.creater;
	}
	alarm[0] = 5;
	count += 1;
}else{
	instance_destroy();
}