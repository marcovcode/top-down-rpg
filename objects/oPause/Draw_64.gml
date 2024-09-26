// draw on pause screen
if pause = 1 {
	draw_set_alpha(0.5)
	draw_rectangle_color(-100, -100, display_get_gui_width() + 100, display_get_gui_height() + 100, 0, 0, 0, 0, false)
	draw_set_alpha(1)
	draw_set_font(global.fontMain)
	draw_set_halign(fa_center)
	draw_text_transformed(display_get_gui_width() / 2, display_get_gui_height() / 2, "GAME PAUSED", 4 * global.UIScale, 4 * global.UIScale, 0)
}