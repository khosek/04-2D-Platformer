extends Node2D
#
#onready var Quarterstaff = load("res://Quarterstaff/Quarterstaff.tscn")
#onready var player = get_node("..")
#
#func _ready():
#	pass
#
#func throw_staff(toPosition):
#	var staff = Quarterstaff.instance()
#	staff.position = Vector2(player.position.x - 200, player.position.y - 300)
#	staff.Player = player
#	staff.velocity = Vector2(1,0).rotated(toPosition)
#	staff.position.x += staff.velocity.x * 100
#	staff.position.y += staff.velocity.y * 100
#	print(staff.velocity)
#	add_child(staff)
