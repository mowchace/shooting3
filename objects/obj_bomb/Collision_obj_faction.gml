/// @description

//Check faction
var _damegepoint = floor(damegePoint+attack/10);
if(other == creater || other.faction == faction) _damegepoint= floor(_damegepoint/3);

//Damege object
if(cooltime < 0){
	with (other) {
		if(object_index != obj_player){
			if(found_flag == false && other.hideattack == true){
				_damegepoint *= 2;
			}
		}
		HP -= _damegepoint
		direction = other.direction+180;
	}
	with instance_create_layer(other.x+irandom_range(-5,10),other.y+irandom_range(-10,-50),"Instances",obj_damege_Font)
		{
			draw_message = _damegepoint;
			size = 1;
		};
	cooltime = 5;
}