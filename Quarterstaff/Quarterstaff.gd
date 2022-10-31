extends Node2D

var speed = 10.0
var velocity = Vector2(1,0)
var turn_speed = 12

var Player
var player_hitbox
var returning = false

func _ready():
	pass

func _physics_process(delta):
	rotation_degrees += turn_speed
#	move_and_collide(velocity)

func _on_Timer_timeout():
	returning = true


func _on_Area2D_body_entered(body):
	if body != Player:
		if body.has_method("damage"):
			body.damage()
		returning = true
	else:
		Player.return_quarterstaff()
