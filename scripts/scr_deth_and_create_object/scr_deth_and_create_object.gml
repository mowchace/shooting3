function deth_and_create_object(_XX,_YY,_DestroyObject_spr_width,_DestroyObject_spr_heght,_create_obj,_create_obj_num){
	var _collisionmap = layer_tilemap_get_id("Tcol");
	repeat(_create_obj_num){
		for(var _i = 0; _i <= 5; _i++){
			if(!position_meeting(_XX,_YY,obj_faction)
			&& !tilemap_get_at_pixel(_collisionmap,_XX,_YY)){
				var _inst = instance_create_layer(_XX,_YY,"Instances",_create_obj);
				break;
			} else {
				_YY += _DestroyObject_spr_width*_i*choose(-1,1);
				_XX += _DestroyObject_spr_heght*_i*choose(-1,1);
			}
			show_debug_message("counter _i = "+string(_i));
		}
	}
}