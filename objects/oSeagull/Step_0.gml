move_x = keyboard_check(vk_right) - keyboard_check(vk_left);
move_x = move_x * move_speed;

if (keyboard_check_pressed(ord("Z")) and jumps > 0) {
	jumps -= 1;
	sprite_index = sSeagullJump;
	alarm[0] = room_speed * 0.5;
	audio_sound_pitch(seagull_jump,random_range(0.5,1.5));
	audio_play_sound(seagull_jump,1,false);
	move_y = -jump_speed;
} else if (move_y < 10) {
	move_y += 1;
}

move_and_collide(move_x,move_y,oFloor);

if (move_x != 0) {
	image_xscale = sign(move_x);
}

if (move_x = -0) {
	image_speed = 0;
} else {
	image_speed = 0.5;
} 
if (move_x = 1) {
	player_dir = 1;
} else if (move_x = -1) {
	player_dir = 0;
}

if (keyboard_check_pressed(ord("X"))) {
	sprite_index = sSeagullAttack;
	image_speed = 1;
	alarm[0] = room_speed * 0.5;
	instance_create_layer(x + 1,y,"Instances",oBullet);
}

// clamp jumps at 5
clamp(jumps,0,5);

// giving coins to dmitri
if (keyboard_check_pressed(vk_up) and place_meeting(x,y,oDmitri) and coins >= 2) {
	oDmitri.have_coins = true;
}

// end of level
if (keyboard_check_pressed(vk_up) and place_meeting(x,y,oMadHawktorDoor)) {
	sprite_index = sSeagullGoToDoor;
	done_with_tutorial = true;
	alarm[0] = room_speed * 1;
}

// collisions
if (place_meeting(x,y,oBreakable)) {
	move_speed = 0;
	if (image_xscale = -1) {
		x += 5;
	} else if (image_xscale = 1) {
		x -= 5;
	}
	alarm[2] = room_speed * 0.5;
}

if (place_meeting(x,y,oWall)) {
	move_speed = 0;
	if (image_xscale = -1) {
		x += 5;
	} else if (image_xscale = 1) {
		x -= 5;
	}
	alarm[2] = room_speed * 0.5;
}