// player inside range
if distance_to_object(oPlayer) <= interactRange {
	// chest closed
	if image_index = 0 and keyboard_check_pressed(ord("E")) {
		instance_create_layer(x, y, "Instances", oItem)
		instance_create_layer(x, y, "Instances", oItem)
		instance_create_layer(x, y, "Instances", oItem)
		
		image_index = 1
	}
}