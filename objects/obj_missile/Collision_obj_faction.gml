//Check faction
if(other == creater || other.faction == faction) exit;

//Damege object
var _damegepoint = floor(damegePoint*attack/10);
with (other) {
	HP -= _damegepoint
}
with instance_create_layer(other.x+irandom_range(-5,10),other.y+irandom_range(-10,-50),"Instances",obj_damege_Font)
	{
		draw_message = _damegepoint;
		size = 1;
	};
instance_destroy();
audio_play_sound(SE_bomb2,1,0);
var _inst = instance_create_layer(x,y,"Instances",obj_par_bomb);
with(_inst){
	attack = other.attack;
	creater = other.creater;
	faction = other.faction;
}
