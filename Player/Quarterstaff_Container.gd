extends Node2D

onready var Quarterstaff = load("res://Quarterstaff/Quarterstaff.tscn")
var player
var camera_position

var has_staff = true

func _physics_process(_delta):
	if Input.is_action_just_pressed("attack") and has_staff:
		has_staff = false
		throw_staff()

func throw_staff():
	var staff = Quarterstaff.instance()
	staff.position = player.global_position
	if(player.get_node("AnimatedSprite").flip_h):
		staff.velocity = Vector2(-1,0)
	staff.position.x += staff.velocity.x * 50.0
#	player.velocity.x -= staff.velocity.x * 50.0
	add_child(staff)
