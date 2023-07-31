with (oSeagull)	{
	var b0 = bullet_direction == 0;
	var b1 = bullet_direction == 1;
}

if (b0) {
	image_xscale = -1;
	x -= 5;
} else if (b1) {
	image_xscale = 1;
	x += 5;
}

if (place_meeting(x,y,oBreakable)) {
	audio_play_sound(explosion,1,false);
	oBreakable.breakable_lives -= 1;
	instance_destroy();
}