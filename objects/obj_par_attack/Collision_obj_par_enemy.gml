/// @description

//Check faction
if(other == creater || other.faction == faction) exit;
//Damege object
var _damegepoint = floor(damegePoint*attack/10);
create_damege(_damegepoint,other,direction)
create_particles(x+irandom_range(0,gunhit_rangeplus),y+irandom_range(-gunhit_rangeplus,0),direction,"obj_gunhit");
with(other){
	range_plus = 30;
	spd = n_spd;
	alert_flag = true;
	alert_time = room_speed;
	create_emotion(emotion.alertextensyon);
}
instance_destroy();