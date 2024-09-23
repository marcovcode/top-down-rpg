// player inside range
if distance_to_object(oPlayer) <= interactRange {
	// chest closed
	if image_index = 0 and keyboard_check_pressed(ord("E")) and oPlayer.itemKey >= 1 {
		image_index = 1
		oPlayer.itemKey += -1
		mask_index = sEmpty
	}
}