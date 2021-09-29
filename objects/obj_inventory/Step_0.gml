/// @description
if(keyboard_check_pressed(ord("I"))){global.show_inventory = !global.show_inventory;}

if(!global.show_inventory) exit;
#region Mouse slot
// get mouse position for GUI_layer(inventory)
mousex = device_mouse_x_to_gui(0);
mousey = device_mouse_y_to_gui(0);

var cell_xbuff = (cell_size+x_buffer)*scale;
var cell_ybuff = (cell_size+y_buffer)*scale;

//mouse position
var inventory_mousex = mousex - slots_x;
var inventory_mousey = mousey - slots_y;

//inventory cell position
var nx = inventory_mousex div cell_xbuff;
var ny = inventory_mousey div cell_ybuff;

var _mouse_in_inventory = true;
//check mouse position on inventory cells
if(nx >=0 && nx < inv_slots_width && ny >= 0 && ny < inv_slots_height){
	var sx = inventory_mousex - (nx*cell_xbuff);
	var sy = inventory_mousey - (ny*cell_xbuff);
	if((sx < cell_size*scale) && (sy < cell_size*scale)){
		mouse_slotx = nx;
		mouse_sloty = ny;
	}
} else {
	_mouse_in_inventory = false;
}

// set selected position
selected_slot = min(inv_slots-1,mouse_slotx + (mouse_sloty*inv_slots_width));
#endregion
// pickup Item
var inv_grid = ds_inventory;
var selectingslot_item = inv_grid[# 0,selected_slot];

if(pickup_slot != -1){
	if(mouse_check_button_pressed(mb_left)){
			// Drop item if item pick up and mouse position not on inventory 
		if(!_mouse_in_inventory){
			#region Drop Item into Game world
				var _pickup_itme = inv_grid[# 0,pickup_slot];
				var _pickup_itme_num = inv_grid[# 1,pickup_slot];
				//inv_grid[# 1,3up_slot] -= 1;
				inv_grid[# 1,pickup_slot] = 0;
				inv_grid[# 0,pickup_slot] = item.None;
				pickup_slot = -1; 
				//Destroy item in inventory if it was last one
					//if(inv_grid[# 1,pickup_slot] == 0){
					//	inv_grid[# 0,pickup_slot] = item.None;
					//	pickup_slot = -1; 
					//}
				//Create World Drop Item
				create_item(_pickup_itme,_pickup_itme_num,obj_player.x,obj_player.y,100);
				/*var _inst = instance_create_layer(obj_player.x,obj_player.y,"Instances",obj_item);
				with(_inst){
					item_spr_num = _pickup_itme;
					//get sprite row and collumn
					x_frame = item_spr_num mod (spr_width/cell_size);
					y_frame = item_spr_num div (spr_width/cell_size);
				}
				show_debug_message("dropped an item");*/
			#endregion
		} else if(selectingslot_item == item.None){
			inv_grid[# 0, selected_slot] = inv_grid[# 0,pickup_slot];
			inv_grid[# 1, selected_slot] = inv_grid[# 1,pickup_slot];
			
			inv_grid[# 0, pickup_slot] = item.None;
			inv_grid[# 1, pickup_slot] = 0;
			
			pickup_slot = -1;
		}
		else if(selectingslot_item == inv_grid[# 0,pickup_slot]){
			if(selected_slot != pickup_slot){
				// item stack
				inv_grid[# 1, selected_slot] += inv_grid[# 1,pickup_slot];
				inv_grid[# 0, pickup_slot] = item.None;
				inv_grid[# 1, pickup_slot] = 0;	
			}
			pickup_slot = -1;
		}
		else {
			//pickup item change
			var selectingslot_item_num = inv_grid[# 1,selected_slot];
			inv_grid[# 0, selected_slot] = inv_grid[# 0,pickup_slot];
			inv_grid[# 1, selected_slot] = inv_grid[# 1,pickup_slot];
			
			inv_grid[# 0, pickup_slot] = selectingslot_item;
			inv_grid[# 1, pickup_slot] = selectingslot_item_num;
			
			pickup_slot = -1;
		}
	}
} else if(selectingslot_item != item.None){
	//Drop Item into Game world
	if(mouse_check_button_pressed(mb_middle)){
			inv_grid[# 1,selected_slot] -= 1;
			//Destroy item in inventory if it was last one
			if(inv_grid[# 1,selected_slot] == 0){
				inv_grid[# 0,selected_slot] = item.None;
			}
			//Create World Drop Item
			create_item(selectingslot_item,1,obj_player.x,obj_player.y,100);
			/*var _inst = instance_create_layer(obj_player.x,obj_player.y,"Instances",obj_item);
			with(_inst){
				item_spr_num = selectingslot_item;
				//get sprite row and collumn
				x_frame = item_spr_num mod (spr_width/cell_size);
				y_frame = item_spr_num div (spr_width/cell_size);
			}*/
	}
	//Drop pickup Item into new slot
	if(mouse_check_button_pressed(mb_right)){
		pickup_slot = selected_slot;
	}
}