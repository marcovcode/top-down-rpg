/// @description Insert description here
// You can write your code in this editor

depth = -y

if place_meeting(x, y, oCollision) instance_destroy()

batEnemy = instance_place(x, y, oBat)

if batEnemy != noone {
	instance_destroy()
	batEnemy.hp_current -= dmg
}

redBatEnemy = instance_place(x, y, oBatHard)

if redBatEnemy != noone {
	instance_destroy()
	redBatEnemy.hp_current -= dmg
}

slimeEnemy = instance_place(x, y, oSlime)

if slimeEnemy != noone {
	instance_destroy()
	slimeEnemy.hp_current -= dmg
}