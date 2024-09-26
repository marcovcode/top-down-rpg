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

// reading signs
if distance_to_object(oSign) <= interactRange {
	var currentSign = instance_nearest(x, y, oSign)
	readText = currentSign.dialogueText
	signRead = true
} else {
	signRead = false
}