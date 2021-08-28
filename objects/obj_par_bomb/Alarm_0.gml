var _rangePlus = irandom_range(-5,5);
if(count <= 2){
	if(count = 0){
		var _inst = instance_create_layer(x,y,"Instances",obj_bomb);
	} else if (count >= 1){
		var _inst = instance_create_layer(x+_rangePlus,y+_rangePlus,"Instances",obj_bomb);
	}
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