// pause game
if keyboard_check_pressed(vk_escape) {
	pause *= -1
	
	if pause = 1 instance_deactivate_all(true)
	if pause = -1 instance_activate_all()
}