taunt_var = taunt_var;

/// @description stopping animation

// end animation
sprite_index = sSeagullIdleRight;
attacking = false;

// subtracts from y to stop seagull from binding his feet with the floor
// like spongebob in the one episode where he doesn't know how to tie his shoes
y -= 14;

// end tutorial
if (room = tutorial and done_with_tutorial = true and secret_demo_end.secret_ending = false) {
	room_goto(demo_end);
} else if (room = tutorial and done_with_tutorial = true and secret_demo_end.secret_ending = true) {
	room_goto(secret_ending_room);
}