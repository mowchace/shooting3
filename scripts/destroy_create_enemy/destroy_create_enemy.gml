function destroy_create_enemy(_XX,_YY,_create_obj,_repeat){
	repeat(_repeat){
		while(position_meeting(_XX,_YY,obj_faction) || position_meeting(_XX, _YY,obj_collision)){
				_YY += sprite_height*choose(-1,1);
				_XX += sprite_width*choose(-1,1);
		}
		var _inst = instance_create_layer(_XX,_YY,"Instances",_create_obj);
	}
}