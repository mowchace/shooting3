//spawn obje at roomstart
function spawn_on_camera(_spawnObj,_spawnnum){
	var _collisionmap = layer_tilemap_get_id(layer_get_id("Tcol"));
	var _XX = irandom_range(0,room_width);
	var _YY = irandom_range(0,room_height);
	repeat(_spawnnum){
		if(!position_meeting(_XX,_YY,obj_faction)&&!tilemap_get_at_pixel(_collisionmap,_XX,_YY)){
			instance_create_layer(_XX,_YY,"Instances",_spawnObj);
			_XX = irandom_range(0,room_width);
			_YY = irandom_range(0,room_height);
		}
	}
}