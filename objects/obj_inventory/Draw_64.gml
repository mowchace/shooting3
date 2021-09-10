// Inventory back
if(!show_inventory)exit;
draw_sprite_part_ext(spr_inv_UI,0,cell_size,0,inv_UI_width,inv_UI_height,inv_UI_x,inv_UI_y,scale,scale,c_white,1);
var _c = c_black;
// Inventory
var _ii,_ix,_iy,_xx,_yy,_spr_x,_spr_y,_iitem,_inv_grid;
_ii = 0; _ix = 0; _iy = 0;_inv_grid = ds_inventory;
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
		if(_iitem > 0)draw_sprite_part_ext(
			spr_inv_items,0,_spr_x,_spr_y,cell_size,cell_size,_xx,_yy,scale,scale,c_white,1
		);
		
		//Draw item number
		if(_iitem > 0){
			var _num = _inv_grid[# 1,_ii];
			draw_text_color(_xx,_yy,string(_num),_c,_c,_c,_c,1);
		}
		// Increment
		_ii += 1;
		_ix = _ii mod inv_slots_width;
		_iy = _ii div inv_slots_width;
}