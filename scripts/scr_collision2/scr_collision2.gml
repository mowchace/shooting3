function Collision2(_throu_flag){
	var _collided = false;
	switch(_throu_flag){
		case 0: 
			if(moveX != 0){
				if(place_meeting(shadow_instance_id.x+moveX,shadow_instance_id.y,obj_par_nutral) && place_meeting(shadow_instance_id.x+moveX,shadow_instance_id.y,obj_shadow) || tilemap_get_at_pixel(collisionmap,shadow_instance_id.x+moveX,shadow_instance_id.y)){
					repeat(abs(moveX)){
						if (!place_meeting(shadow_instance_id.x+sign(moveX),shadow_instance_id.y,obj_par_nutral) && !tilemap_get_at_pixel(collisionmap,shadow_instance_id.x+sign(moveX),shadow_instance_id.y)){
							shadow_instance_id.x += sign(moveX);
							x += sign(moveX);
						} else {
							_collided = true;
							break;}
					}
					moveX = 0;
				}
			}
			// VARTICAL
			if(moveY != 0){
				if(place_meeting(shadow_instance_id.x+moveX,shadow_instance_id.y,obj_par_nutral) && place_meeting(shadow_instance_id.x,shadow_instance_id.y+moveY,obj_shadow) || tilemap_get_at_pixel(collisionmap,shadow_instance_id.x,shadow_instance_id.y+moveY)){
					repeat(abs(moveY)){
						if (!place_meeting(shadow_instance_id.x,shadow_instance_id.y+sign(moveY),obj_par_nutral) || !place_meeting(shadow_instance_id.x,shadow_instance_id.y+sign(moveY),obj_shadow) && !tilemap_get_at_pixel(collisionmap,shadow_instance_id.x,shadow_instance_id.y+sign(moveY))){
							shadow_instance_id.y += sign(moveY);
							y += sign(moveY);
						} else {
							_collided = true;
							break;}
					}
					moveY = 0;
				}
			}
		break;
		case 1:
		// COLLISION CHECKS
		if(moveX != 0){
			if(place_meeting(shadow_instance_id.x+moveX,shadow_instance_id.y,obj_faction) || tilemap_get_at_pixel(collisionmap,shadow_instance_id.x+moveX,shadow_instance_id.y)){
				repeat(abs(moveX)){
					if (!place_meeting(shadow_instance_id.x+sign(moveX),shadow_instance_id.y,obj_faction) && !tilemap_get_at_pixel(collisionmap,shadow_instance_id.x+sign(moveX),shadow_instance_id.y)){
						x += sign(moveX);
						shadow_instance_id.x += sign(moveX);
					} else {
						_collided = true;
						break;}
				}
				moveX = 0;
			}
		}
		// VARTICAL
		if(moveY != 0){
			if(place_meeting(shadow_instance_id.x,shadow_instance_id.y+moveY,obj_faction) || tilemap_get_at_pixel(collisionmap,shadow_instance_id.x,shadow_instance_id.y+moveY)){
				repeat(abs(moveY)){
					if (!place_meeting(shadow_instance_id.x,shadow_instance_id.y+sign(moveY),obj_faction) && !tilemap_get_at_pixel(collisionmap,shadow_instance_id.x,shadow_instance_id.y+sign(moveY))){
						y += sign(moveY);
						shadow_instance_id.y += sign(moveY);
					} else {
						_collided = true;
						break;}
				}
				moveY = 0;
			}
		}break;
	}
	return _collided;
}