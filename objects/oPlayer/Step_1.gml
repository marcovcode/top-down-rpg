depth = -y

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