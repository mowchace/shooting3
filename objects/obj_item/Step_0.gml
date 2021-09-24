// Drop point move
if(drop_move){
	x = lerp(x,goal_x,0.1);
	y = lerp(y,goal_y,0.1);
	if(abs(x-goal_x) < 1 && abs(y-goal_y) < 1){drop_move = false;}
} else {
	// pickup Game World Item
	//if(!keyboard_check(ord("Z"))) exit;
	if(!global.pickupmode)exit;
	var _px = obj_player.x;
	var _py = obj_player.y;
	var _r = DropAndPickuplength;
	// item pickup if exists item in player pickup rectangle
	if(point_in_rectangle(_px,_py,x-_r,y-_r,x+_r,y+_r)){
		//ARE WE ON TOP OF THE PLAYER?
		_r = 2;
		if (!point_in_rectangle(_px,_py,x-_r,y-_r,x+_r,y+_r)){
			// move towards the player for pickup
			x = lerp(x,_px,0.3);
			y = lerp(y,_py,0.3);
		} else {
			// item pickup
			var _item = item_spr_num;
			with(obj_inventory){
				var _ds_inv = ds_inventory;
				var _picked_up = false;
				//check if item exists in inventory alredy
				var _yy = 0; repeat(inv_slots){
					if(_ds_inv[# 0,_yy] == _item){
						_ds_inv[# 1,_yy] += 1;
						_picked_up = true;
						break;
					} else {
						_yy += 1;
					}
				}
				// otherwise, add item to an empty slot if there is one
				if(!_picked_up){
					var _yy = 0; repeat(inv_slots){
						if(_ds_inv[# 0,_yy] == item.None){
							_ds_inv[# 0,_yy] = _item;
							_ds_inv[# 1,_yy] += 1;
							_picked_up = true;
							break;
						} else {
							_yy += 1;
						}
					}
				}
			}
			//DESTROY ITEM IF PICKED_UP
			if(_picked_up){
				instance_destroy();
				show_debug_message("picked up")
			}
		}
	}
}