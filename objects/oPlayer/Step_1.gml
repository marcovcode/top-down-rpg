// damage
activateHit = keyboard_check_pressed(vk_backspace)

if activateHit and !hit {
	hit = true
	image_alpha = 0.5
	image_blend = c_gray
	HPCur += -1
}

if hit {
	image_alpha += alphaGain
	
	if image_alpha >= 1 {
		hit = false
		image_blend = -1
	}
}

// death
if HPCur <= 0 death = true
if death game_restart()