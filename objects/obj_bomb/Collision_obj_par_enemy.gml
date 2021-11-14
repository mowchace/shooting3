/// @description

//Check faction
var _damegepoint = floor(damegePoint+attack/10);
if(other == creater || other.faction == faction) _damegepoint= floor(_damegepoint/3);

//Damege object
if(cooltime < 0){
	create_damege(_damegepoint,other,direction);
	with(other){
		range_plus = 30;
		spd = n_spd;
		alert_flag = true;
		alert_time = room_speed;
		create_emotion(emotion.alertextensyon);
	}
	cooltime = 5;
}
