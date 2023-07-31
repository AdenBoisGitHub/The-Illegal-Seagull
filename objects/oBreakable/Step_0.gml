if (breakable_lives <= 0) {
	audio_play_sound(explosion,1,false);
	instance_destroy();
}