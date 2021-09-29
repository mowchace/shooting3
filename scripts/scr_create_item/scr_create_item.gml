//description Item Drop script
function create_item(_DropItem_spr_num,_DropItem_num,_XX,_YY,_DropPercentage){
	if(_DropItem_spr_num == item.None)exit;
		var _randompercentage = irandom_range(0,100);
		if(_randompercentage <= _DropPercentage){
			var _inst = instance_create_layer(_XX,_YY,"Instances",obj_item);
			with(_inst){
				item_spr_num = _DropItem_spr_num;
				item_num = _DropItem_num;
				//get sprite row and collumn
				x_frame = item_spr_num mod (spr_width/cell_size);
				y_frame = item_spr_num div (spr_width/cell_size);
			}
	}
}