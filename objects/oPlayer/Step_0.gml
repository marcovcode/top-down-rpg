// setting up controls
if rolling = false {
	key_up = keyboard_check(ord("W")) // up movement
	key_down = keyboard_check(ord("S")) // down movement
	key_left = keyboard_check(ord("A")) // left movement
	key_right = keyboard_check(ord("D")) // right movement
	key_sprint = keyboard_check(vk_shift) // sprint
	key_roll = keyboard_check_pressed(vk_space) // roll
}

// dodge roll
if !rolling and key_roll {
	rolling = true
	rollDir = point_direction(x, y, mouse_x, mouse_y)
	Bspd = Rspd
	
	if y < mouse_y { sprite_index = sPlayerRollF; dirY = 1 }
	else { sprite_index = sPlayerRollB; dirY = -1 }
	
	if x < mouse_x { image_xscale = 1; dirX = 1 }
	else { image_xscale = -1; dirX = -1 }
}

if rolling = true {
	if image_index >= 5
	{
		rolling = false
		if dirY = 1 sprite_index = sPlayerRunF
		else sprite_index = sPlayerRunB
	}
}

if !rolling {
	if key_right dirX = 1
	if key_left dirX = -1
	image_xscale = dirX

	if key_up {
		dirY = -1
		sprite_index = sPlayerRunB
	}

	if key_down {
		dirY = 1
		sprite_index = sPlayerRunF
	}
}

// standing still or moving
if !rolling && !key_up && !key_down && !key_left && !key_right image_index = 0

if rolling = false {
	if key_sprint {
		Bspd = Sspd
	} else {
		Bspd = Wspd
	}
}

// change animation speed
image_speed = Bspd;

// horizontal movement
if rolling = false
spd = (key_right - key_left) * Bspd
else spd = lengthdir_x(Bspd, rollDir)
if place_meeting(x + spd, y, oCollision) {
} else {
	x += spd
}

// vertical movement
if rolling = false
spd = (key_down - key_up) * Bspd
else spd = lengthdir_y(Bspd, rollDir)

if place_meeting(x, y + spd, oCollision) {
} else {
	y += spd
}
