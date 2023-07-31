audio_play_sound(shoot,1,false);
image_xscale = 0.5;
image_yscale = 0.9;
speed = 10;

with (oSeagull) {
	var b0 = bullet_direction == 0;
	if (b0) {
		direction = 180;
	}
}

with (oSeagull) {
	var b1 = bullet_direction == 1;
	if (b1) {
		direction = 0;
	}
}