// under bar
draw_sprite_ext(sCharacterHUD, 1, 2 * UIScale, 0, 1 * UIScale, 1 * UIScale, 0, -1, 1)

// stamina bar
draw_sprite_ext(sStamina, 0, 2 * UIScale, 0, (staminaCur/staminaMax) * UIScale, 1 * UIScale, 0, -1, 1)

// health system
draw_sprite_ext(sHearts, HPCur, 2 * UIScale, 0, 1 * UIScale, 1 * UIScale, 0, -1, 1)

// over hud
draw_sprite_ext(sCharacterHUD, 0, 2 * UIScale, 0, 1 * UIScale, 1 * UIScale, 0, -1, 1)

// item and inventory
draw_text_transformed(12 * UIScale, 12 * UIScale, string(itemGold), 1 * UIScale, 1 * UIScale, 0)
draw_text_transformed(12 * UIScale, 26 * UIScale, string(itemArrow), 1 * UIScale, 1 * UIScale, 0)
draw_text_transformed(12 * UIScale, 40 * UIScale, string(itemKey), 1 * UIScale, 1 * UIScale, 0)