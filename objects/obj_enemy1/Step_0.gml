/// @description
event_inherited();
if(HP <= 0){
	instance_destroy();
	repeat(2){
		var _inst = instance_create_layer(x,y,"Instances",obj_enemy2);
	}
}

