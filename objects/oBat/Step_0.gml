if instance_exists(oPlayer) {
	// chase
	move_towards_point(oPlayer.x, oPlayer.y, _speed)

	if distance_to_object(oPlayer) <= chase_range_start chase = true
	if distance_to_object(oPlayer) >= chase_range_stop chase = false
		
	if chase {
		_speed = speed_base

		if oPlayer.x > x image_xscale = 1
		if oPlayer.x < x image_xscale = -1
	} else {
		_speed = 0
	}

	// attack
	if place_meeting(x, y, oPlayer) and !oPlayer.hit {
		oPlayer.hit = true
		oPlayer.image_alpha = 0.5
		oPlayer.image_blend = c_gray
		oPlayer.HPCur += -damage
	}
}