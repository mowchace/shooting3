// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function screenshake(_mag,_length){
	with(obj_camera){
		if(_mag > ShakeRemain)
		{
			shakeMagnitude = _mag;
			ShakeRemain = shakeMagnitude;
			shakeLength = _length;
		}
	}
}