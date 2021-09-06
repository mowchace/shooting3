/// @description
event_inherited();
if(HP <= 0){
	destroy_create_enemy(x,y,obj_enemy3,2);
	instance_destroy();	
}