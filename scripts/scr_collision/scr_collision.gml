function Collision(){
	// COLLISION CHECKS
	if(moveX != 0){
		if(place_meeting(x+moveX,y,obj_collision) || place_meeting(x+moveX,y,obj_faction) || tilemap_get_at_pixel(collisionmap,x+moveX,y)){
			repeat(abs(moveX)){
				if (!place_meeting(x+sign(moveX),y,obj_collision) && !place_meeting(x+sign(moveX),y,obj_faction) && !tilemap_get_at_pixel(collisionmap,x+sign(moveX),y)){
					x += sign(moveX);
				} else {break;}
			}
			moveX = 0;
		}
	}
	// VARTICAL
	if(moveY != 0){
		if(place_meeting(x,y+moveY,obj_collision) || place_meeting(x,y+moveY,obj_faction) || tilemap_get_at_pixel(collisionmap,x,y+moveY)){
			repeat(abs(moveY)){
				if (!place_meeting(x,y+sign(moveY),obj_collision) && !place_meeting(x,y+sign(moveY),obj_faction) && !tilemap_get_at_pixel(collisionmap,x,y+sign(moveY))){
					y += sign(moveY);
				} else {break;}
			}
			moveY = 0;
		}
	}
}