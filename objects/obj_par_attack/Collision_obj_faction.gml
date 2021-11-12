/// @description

//Check faction
if(other == creater || other.faction == faction) exit;
//Damege object
var _damegepoint = floor(damegePoint*attack/10);
create_damege(_damegepoint,other,direction)
show_debug_message("other:"+string(other));
if(place_meeting(x,y,obj_par_enemy)){
	with(other){
		if(instance_exists(obj_par_ally)){
			moveX = lengthdir_x(spd,other.direction);
			moveY = lengthdir_y(spd,other.direction);
		}
		range_plus = 30;
		spd = n_spd;
		alert_flag = true;
		alert_time = room_speed;
		create_emotion(emotion.alertextensyon);
	}
}
instance_destroy();