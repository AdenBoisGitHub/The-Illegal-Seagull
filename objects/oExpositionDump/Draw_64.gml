draw_set_font(fnt_main);
draw_set_color(c_yellow);
if (para = 0) {
	draw_text(x,y,"My name's the Illegal Seagull.");
} else if (para = 1) {
	draw_text(x,y,"A couple months ago, I robbed a bank\nin a moment of desperation.");
} else if (para = 2) {
	draw_text(x,y,"Today, he kidnapped my pet turtle named Steve.");
} else if (para = 3) {
	draw_text(x,y,"I won't let this slide. I have to\ngo put an end to his reign of terror.");
} else if (para = 4) {
	draw_text(x,y,"I'll show him who I really am...");
} else if (para > 4) {
	draw_set_font(fnt_big);
	draw_text(x,y,"THE\nILLEGAL\nSEAGULL");
	done_with_exposition = true;
}