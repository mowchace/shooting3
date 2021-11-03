/// @description

//Check faction
if(other == creater || other.faction == faction) exit;

//Damege object
var _damegepoint = floor(damegePoint*attack/10);
with (other) {
	if(object_index != obj_player){
		if(found_flag == false && other.hideattack == true){
			_damegepoint *= 2;
		}
	}
	HP -= _damegepoint
	direction = other.direction+180;
}
create_damege_font(x,y,_damegepoint)
instance_destroy();
