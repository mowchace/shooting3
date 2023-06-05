//----
function scr_ExcuteArray(_scr,_args){
	switch(array_length(_args)){
		case 1: return script_execute(_scr,_args[0]);
		case 2: return script_execute(_scr,_args[0],_args[1]);
		case 3: return script_execute(_scr,_args[0],_args[1],_args[2]);
		default: show_error("script_excute_array:argment count not supported!",false);
	}
}