event_inherited();

if(HP <= 0){
	instance_destroy();
	var _inst = instance_create_layer(x,y,"Instances",obj_stump);
}