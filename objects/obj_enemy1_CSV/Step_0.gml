/// @description
event_inherited();
if(HP <= 0){
	instance_destroy();	
	destroy_create_enemy(x,y,obj_enemy2,2);
}