/// @description

//Check faction
if(other == creater || other.faction == faction) exit;
//Damege object
var _damegepoint = floor(damegePoint*attack/10);
create_damege(_damegepoint,other,direction)
if(place_meeting(x,y,obj_par_enemy)){
	with(obj_par_enemy){
		moveX = lengthdir_x(spd,other.direction);
		moveY = lengthdir_y(spd,other.direction);
		range_plus = 30;
		spd = n_spd;
		alert_flag = true;
		alert_time = room_speed;
	}
}
instance_destroy();