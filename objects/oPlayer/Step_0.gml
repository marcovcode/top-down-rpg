// setting up controls
key_up = keyboard_check(vk_up) // up movement
key_down = keyboard_check(vk_down) // down movement
key_left = keyboard_check(vk_left) // left movement
key_right = keyboard_check(vk_right) // right movement
key_sprint = keyboard_check(vk_shift); // sprint

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

// standing still or moving
if !key_up && !key_down && !key_left && !key_right image_index = 0

if key_sprint {
	Bspd = Sspd
} else {
	Bspd = Wspd
}

// change animation speed
image_speed = Bspd;

// horizontal movement
spd = (key_right - key_left) * Bspd
if place_meeting(x + spd, y, oCollision) {
} else {
	x += spd
}

// vertical movement
spd = (key_down - key_up) * Bspd
if place_meeting(x, y + spd, oCollision) {
} else {
	y += spd
}