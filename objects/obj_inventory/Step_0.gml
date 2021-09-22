/// @description
if(keyboard_check_pressed(ord("I"))){show_inventory = !show_inventory;}

if(!show_inventory) exit;
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

if(nx >=0 && nx < inv_slots_width && ny >= 0 && ny < inv_slots_height){
	var sx = inventory_mousex - (nx*cell_xbuff);
	var sy = inventory_mousey - (ny*cell_xbuff);
	if((sx < cell_size*scale) && (sy < cell_size*scale)){
		mouse_slotx = nx;
		mouse_sloty = ny;
	}
}


// set selected position
selected_slot = min(inv_slots-1,mouse_slotx + (mouse_sloty*inv_slots_width));
#endregion

// pickup Item
var inv_grid = ds_inventory;
var selectingslot_item = inv_grid[# 0,selected_slot];

if(pickup_slot != -1){
	if(mouse_check_button_pressed(mb_left)){
		if(selectingslot_item == item.none){
			inv_grid[# 0, selected_slot] = inv_grid[# 0,pickup_slot];
			inv_grid[# 1, selected_slot] = inv_grid[# 1,pickup_slot];
			
			inv_grid[# 0, pickup_slot] = item.none;
			inv_grid[# 1, pickup_slot] = 0;
			
			pickup_slot = -1;
		}
		else if(selectingslot_item == inv_grid[# 0,pickup_slot]){
			if(selected_slot != pickup_slot){
				// item stack
				inv_grid[# 1, selected_slot] += inv_grid[# 1,pickup_slot];
				inv_grid[# 0, pickup_slot] = item.none;
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
} else if(selectingslot_item != item.none){
	//if(mouse_check_button_pressed(mb_right)){
	if(mouse_check_button_pressed(mb_left)){
		pickup_slot = selected_slot;
	}
}