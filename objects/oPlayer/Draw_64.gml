// under bar
draw_sprite_ext(sCharacterHUD, 1, 2 * UIScale, 0, 1 * UIScale, 1 * UIScale, 0, -1, 1)

// stamina bar
draw_sprite_ext(sStamina, 0, 2 * UIScale, 0, (staminaCur/staminaMax) * UIScale, 1 * UIScale, 0, -1, 1)

// health system
draw_sprite_ext(sHearts, HPCur, 2 * UIScale, 0, 1 * UIScale, 1 * UIScale, 0, -1, 1)

// over hud
draw_sprite_ext(sCharacterHUD, 0, 2 * UIScale, 0, 1 * UIScale, 1 * UIScale, 0, -1, 1)

// set the font
draw_set_font(global.fontMain)

// item and inventory
draw_text_transformed(12 * UIScale, 20 * UIScale, string(itemGold), 1 * UIScale, 1 * UIScale, 0)
draw_text_transformed(12 * UIScale, 34 * UIScale, string(itemArrow), 1 * UIScale, 1 * UIScale, 0)
draw_text_transformed(12 * UIScale, 48 * UIScale, string(itemKey), 1 * UIScale, 1 * UIScale, 0)

// draw sign
if signRead = true {
	draw_set_halign(fa_center)
	draw_sprite_ext(sDialogueBox, 0, display_get_gui_width() / 2, display_get_gui_height(), 1.5 * UIScale, 1.5 * UIScale, 0, -1, 1)
	draw_text_transformed(display_get_gui_width()/2, display_get_gui_height() - 30 * UIScale, string(readText), 1 * UIScale, 1 * UIScale, 0)
}