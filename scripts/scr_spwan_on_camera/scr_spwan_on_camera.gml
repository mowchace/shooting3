//spawn obje at roomstart
function spawn_on_camera(_spawnObj,_spawnnum){
	var _XX = irandom_range(0,room_width);
	var _YY = irandom_range(0,room_height);
	repeat(_spawnnum){
		while(point_in_rectangle(_XX,_YY,
				global.cameraX,global.cameraY,
				global.cameraWidth,
				global.cameraHeight)
				|| position_meeting(_XX,_YY,obj_faction) 
				|| position_meeting(_XX,_YY,obj_par_entities)
				//|| position_empty(_XX,_YY)
				)
			{			
					_XX = irandom_range(0,room_width);
					_YY = irandom_range(0,room_height);
			}
		instance_create_layer(_XX,_YY,"Instances",_spawnObj);
	}
}