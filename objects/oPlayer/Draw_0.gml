
draw_self()

// arrow aiming
if chargingBow {
	draw_sprite_ext(sUIArrow, 0, x, y, 1, 1, bowDir, -1, 1)
}