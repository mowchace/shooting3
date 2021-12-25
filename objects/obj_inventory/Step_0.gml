/// @description
if(keyboard_check_pressed(ord("I"))){global.show_inventory = !global.show_inventory;
									 global.gamePaused = !global.gamePaused;}

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
var _item_info = ds_items_info;
var selectingslot_item = inv_grid[# 0,selected_slot];

if(pickup_slot != -1){
	if(mouse_check_button_pressed(mb_right)){
		// Drop item if item pick up and mouse position not on inventory 
		if(!_mouse_in_inventory){
			#region Drop Item into Game world
				var _pickup_itme = inv_grid[# 0,pickup_slot];
				var _pickup_itme_num = inv_grid[# 1,pickup_slot];
				//inv_grid[# 1,pickup_slot] -= 1;
				//Destroy item in inventory
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
	#region Item Use or Equipment
	if(mouse_check_button_pressed(mb_left)){
		// Decrese Item if itemType is UseItem
		switch(inv_grid[# 2,selectingslot_item]){
			case itemType.UseItem: {
				inv_grid[# 1,selected_slot] -= 1;
				//Destroy item in inventory if it was last one
				if(inv_grid[# 1,selected_slot] == 0){
					inv_grid[# 0,selected_slot] = item.None;
				}
				use_Item(obj_player,selectingslot_item,_item_info);
			}break;
			case itemType.EquipmentItem: {
				EquipmentFlag = true;
				equipment_Item(obj_player,selectingslot_item,_item_info);
			}break;
			/*
			with(obj_player){
				MaxHPPlus = _item_info[# _DX++,_DY];
				MaxMPPlus = _item_info[# _DX++,_DY];
				MaxStaminaPlus = _item_info[# _DX++,_DY];
				MaxSatietyPlus = _item_info[# _DX++,_DY];
				MaxSatietyPlus = _item_info[# _DX++,_DY];
				StrengthPlus = _item_info[# _DX++,_DY];
				EndurancePlus = _item_info[# _DX++,_DY];
				DexterityPlus = _item_info[# _DX++,_DY];
				PerceptionPlus = _item_info[# _DX++,_DY];
				MasterPlus = _item_info[# _DX++,_DY];
				WillPlus = _item_info[# _DX++,_DY];
				Magical_powerPlus = _item_info[# _DX++,_DY];
				CharismaPlus = _item_info[# _DX++,_DY];
				AgilityPlus = _item_info[# _DX++,_DY];
				LuckPlus = _item_info[# _DX++,_DY];
			}
			*/
		}
	}
	#endregion
	#region Drop Item into Game world
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
	#endregion
	//Drop pickup Item into new slot
	if(mouse_check_button_pressed(mb_right)){
		pickup_slot = selected_slot;
	}
}