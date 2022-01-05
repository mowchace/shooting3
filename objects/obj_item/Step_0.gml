// Drop point move
if(drop_move){
	x = lerp(x,goal_x,0.1);
	y = lerp(y,goal_y,0.1);
	if(abs(x-goal_x) < 1 && abs(y-goal_y) < 1){drop_move = false;}
} else {
	// pickup Game World Item
	//if(!keyboard_check(ord("Z"))) exit;
	if(!global.pickupmode || !instance_exists(obj_player))exit;
	var _px = obj_player.x;
	var _py = obj_player.y;
	var _r = DropAndPickuplength;
	// item pickup if exists item in player pickup rectangle
	if(point_in_rectangle(_px,_py,x-_r,y-_r,x+_r,y+_r)){
		//ARE WE ON TOP OF THE PLAYER?
		//_r = 2;
		if (!point_in_rectangle(_px,_py,x-_r,y-_r,x+_r,y+_r)){
			// move towards the player for pickup
			//x = lerp(x,_px,0.3);
			//y = lerp(y,_py,0.3);
		} else {
			// item pickup
			var _item = item_spr_num;
			var _item_num = item_num;
			with(obj_inventory){
				var _ds_inv = ds_inventory_use_item;
				var _picked_up = false;
				//check if item exists in inventory alredy
				var _yy = 0; repeat(inv_slots){
					if(_ds_inv[# 0,_yy] == _item){
						_ds_inv[# 1,_yy] += _item_num;
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
							_ds_inv[# 1,_yy] += _item_num;
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
				#region Create Notification
				if(!instance_exists(obj_notification)){instance_create_layer(0,0,"Instances",obj_notification);}
				var _item = item_spr_num;
				with(obj_notification){
					if(!ds_exists(ds_notifications,ds_type_grid)){ //Create Grid
						ds_notifications = ds_grid_create(2,1);
						var _not_grid =	ds_notifications;
						// Item num
						_not_grid[# 0,0] = _item_num;
						// Item Name
						_not_grid[# 1,0] = obj_inventory.ds_items_info[# 1,_item+1];
					} else { //Add to Grid
						event_perform(ev_other,ev_user0);
						var _not_grid =	ds_notifications;
						var _grid_height = ds_grid_height(_not_grid);
						var _name = obj_inventory.ds_items_info[# 1,_item+1];
						var _in_grid = false;
						
						var _yy = 0;repeat(_grid_height){
							if(_name == _not_grid[# 1,_yy]){// Are We in Grid alredy?
								_not_grid[# 0,_yy] += _item_num;
								_in_grid = true;
								break;
							}
							_yy++;
						}
						
						if(!_in_grid){
							ds_grid_resize(_not_grid,2,_grid_height+1);
							// Item num
							_not_grid[# 0,_grid_height] = _item_num;
							// Item Name
							_not_grid[# 1,_grid_height] = obj_inventory.ds_items_info[# 1,_item+1];
						}
					}
				}
				#endregion
				instance_destroy();
				//show_debug_message("picked up")
			}
		}
	}
}