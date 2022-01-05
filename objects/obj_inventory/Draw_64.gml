// Inventory back
if(!global.show_inventory)exit;
draw_sprite_part_ext(spr_inv_UI,0,cell_size,0,inv_UI_width,inv_UI_height,inv_UI_x,inv_UI_y,scale,scale,c_white,1);
var _c = c_black;
// Inventory
var _ii,_ix,_iy,_xx,_yy,_spr_x,_spr_y,_iitem,_inv_grid;
_ii = 0; _ix = 0; _iy = 0;_inv_grid = ds_inventory_use_item;
repeat(inv_slots){
		// x,y location for slot
		_xx = slots_x + ((cell_size+x_buffer)*_ix*scale);
		_yy = slots_y + ((cell_size+y_buffer)*_iy*scale);
		
		// Item
		_iitem = _inv_grid[# 0,_ii]
		_spr_x = (_iitem mod spr_inv_items_columns)*cell_size;
		_spr_y = (_iitem div spr_inv_items_columns)*cell_size;
		//Draw slot and item
		draw_sprite_part_ext(spr_inv_UI,0,0,0,cell_size,cell_size,_xx,_yy,scale,scale,c_white,1);
		
		switch(_ii){
			case selected_slot:
				if(_iitem > 0)draw_sprite_part_ext(
					spr_inv_items,0,_spr_x,_spr_y,cell_size,cell_size,_xx,_yy,scale,scale,c_white,1
				);
				gpu_set_blendmode(bm_add);
				draw_sprite_part_ext(spr_inv_UI,0,0,0,cell_size,cell_size,_xx,_yy,scale,scale,c_white,.3);
				gpu_set_blendmode(bm_normal);
			break;
			
			case pickup_slot:
				if(_iitem > 0) draw_sprite_part_ext(
					spr_inv_items,0,_spr_x,_spr_y,cell_size,cell_size,_xx,_yy,scale,scale,c_white,0.2
				);
			break;
			
			default:
				if(_iitem > 0) draw_sprite_part_ext(
					spr_inv_items,0,_spr_x,_spr_y,cell_size,cell_size,_xx,_yy,scale,scale,c_white,1
				);
			break;
		}
		//Draw item number
		if(_iitem > 0){
			var _num = _inv_grid[# 1,_ii];
			draw_set_font(fnt_inventory_num);
			draw_text_color(_xx+1,_yy+1,string(_num),c_white,c_white,c_white,c_white,1);
			draw_text_color(_xx,_yy,string(_num),_c,_c,_c,_c,1);
		}
		// Increment
		_ii += 1;
		_ix = _ii mod inv_slots_width;
		_iy = _ii div inv_slots_width;
}

//Draw item description
var _iinfo_grid = ds_items_info,_description = "";
//enum item number get
_iitem = _inv_grid[# 0,selected_slot];

if(_iitem > 0){
	draw_set_font(fnt_inventory_num);
	//Item Name
	_description = string(_iinfo_grid[# 1,_iitem+1]) + "." + string(_iinfo_grid[# 21,_iitem+1])
	// wrap the text
	_c = c_black;
	draw_text_ext_color(description_x,description_y,_description,
	string_height("M"),inv_UI_width*scale -(x_buffer*2),_c,_c,_c,_c,1);
	
}


// moution itempickup
if(pickup_slot != -1){
	//Item
	_iitem = _inv_grid[# 0,pickup_slot]
	_spr_x = (_iitem mod spr_inv_items_columns)*cell_size;
	_spr_y = (_iitem div spr_inv_items_columns)*cell_size;	
	draw_sprite_part_ext(
		spr_inv_items,0,_spr_x,_spr_y,cell_size,cell_size,mousex,mousey,scale,scale,c_white,0.8
	); 
	
	var item_num = _inv_grid[# 1,pickup_slot]
	draw_text_color(mousex+(cell_size*scale*0.5),mousey+1,string(item_num),c_white,c_white,c_white,c_white,1);
	draw_text_color(mousex+(cell_size*scale*0.5),mousey,string(item_num),_c,_c,_c,_c,1);
}