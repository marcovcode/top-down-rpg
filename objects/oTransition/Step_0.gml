if place_meeting(x, y, oPlayer) {
	// stats
	global.HPCur = oPlayer.HPCur

	// items
	global.itemGold = oPlayer.itemGold
	global.itemKey = oPlayer.itemKey
	global.itemArrow = oPlayer.itemArrow

	room_goto(roomType)
}