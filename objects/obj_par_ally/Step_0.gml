// Inherit the parent event
event_inherited();

///Did I move up or down
if(y != yprevious){
	//I am in the room
	if( y >= 0 && y < room_height){
		//layer updating
		updatelayer();
	}
}