depth = -y

// slow down item
if speed > 0 speed += -accel
if speed < 0 speed = 0


if speed = 0 {
	// collide with player
	if place_meeting(x, y, oPlayer) {
		if item_type = 0 oPlayer.itemGold += 1
		else if item_type = 1 oPlayer.itemKey += 1
		else if item_type = 2 oPlayer.itemArrow += 5
	
		instance_destroy()
	}
}