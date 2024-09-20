if instance_exists(oPlayer) {
	// allow jumping
	if !jump {
		image_speed = 0
		image_index = 0
		
		_speed = 0

		jump_timer -= 1
	}
	
	if chase {
		// jump
		if jump_timer <= 0 jump = true
	
		if jump {
			image_speed = 1
			_speed = speed_base
		}
		
		if image_index >= image_number {
			jump = false
			jump_timer = jump_timer_max
		}		
	}

	// chase
	move_towards_point(oPlayer.x, oPlayer.y, _speed)

	if distance_to_object(oPlayer) <= chase_range_start chase = true
	if distance_to_object(oPlayer) >= chase_range_stop {
		chase = false
		jump = false
	}
		
	if chase {
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