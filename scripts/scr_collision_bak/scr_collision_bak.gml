//----All collision check script
function Collision_bak(_throu_flag){
	var _collided = false;
	switch(_throu_flag){
		case 0: 
		//obj_nutral collision check
		if(moveX != 0){
			if(place_meeting(x+moveX,y,obj_par_nutral) || tilemap_get_at_pixel(collisionmap,x+moveX,y)){
				repeat(abs(moveX)){
					if (!place_meeting(x+sign(moveX),y,obj_par_nutral) && !tilemap_get_at_pixel(collisionmap,x+sign(moveX),y)){
						//shadow_instance_id.x += sign(moveX);
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
				if(place_meeting(x,y+moveY,obj_par_nutral) || tilemap_get_at_pixel(collisionmap,x,y+moveY)){
					repeat(abs(moveY)){
						if (!place_meeting(x,y+sign(moveY),obj_par_nutral) && !tilemap_get_at_pixel(collisionmap,x,y+sign(moveY))){
							//shadow_instance_id.y += sign(moveY);
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
			//obj_faction collision check
			if(place_meeting(x+moveX,y,obj_faction) || tilemap_get_at_pixel(collisionmap,x+moveX,y)){
				repeat(abs(moveX)){
					if (!place_meeting(x+sign(moveX),y,obj_faction) && !tilemap_get_at_pixel(collisionmap,x+sign(moveX),y)){
						//shadow_instance_id.x += sign(moveX);
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
			if(place_meeting(x,y+moveY,obj_faction) || tilemap_get_at_pixel(collisionmap,x,y+moveY)){
				repeat(abs(moveY)){
					if (!place_meeting(x,y+sign(moveY),obj_faction) && !tilemap_get_at_pixel(collisionmap,x,y+sign(moveY))){
						//shadow_instance_id.y += sign(moveY);
						y += sign(moveY);
					} else {
						_collided = true;
						break;}
				}
				moveY = 0;
			}
		}
		break;
	}
	//Use player_state_bonk
	return _collided;
}