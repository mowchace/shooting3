function RoomTransition(_type,_target){
	if(!instance_exists(obj_transition_ShawnSpalding)){
		with(instance_create_depth(0,0,-9999,obj_transition_ShawnSpalding)){
			type = _type;
			target = _target;
		}
	}else{
		show_debug_message("Trying to transition while transition is happening!")
	}
}