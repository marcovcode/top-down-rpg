// setting up controls
key_up = keyboard_check(vk_up) // up movement
key_down = keyboard_check(vk_down) // down movement
key_left = keyboard_check(vk_left) // left movement
key_right = keyboard_check(vk_right) // right movement

// horizontal movement
spd = (key_right - key_left) * Mspd
x += spd;

// vertical movement
spd = (key_down - key_up) * Mspd
y += spd;