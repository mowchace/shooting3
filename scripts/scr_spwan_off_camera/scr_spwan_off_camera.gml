// discription camera_off_spawn
function spawn_off_camera(_spawnObj,_spawnnum){
	var _collisionmap = layer_tilemap_get_id(layer_get_id("Tcol"));
	var _XX = irandom_range(0,room_width);
	var _YY = irandom_range(0,room_height);
	var _padding = 64;
	repeat(_spawnnum){
		if(!point_in_rectangle(_XX,_YY,
				global.cameraX-_padding,global.cameraY-_padding,
				global.cameraX+global.cameraWidth+_padding,
				global.cameraY+global.cameraHeight+_padding)
			&& !position_meeting(_XX,_YY,obj_faction) 
			&& !tilemap_get_at_pixel(_collisionmap,_XX,_YY)
			){	
				instance_create_layer(_XX,_YY,"Instances",_spawnObj);
				_XX = irandom_range(0,room_width);
				_YY = irandom_range(0,room_height);
			}
	}
}