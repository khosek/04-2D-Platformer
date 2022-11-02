extends KinematicBody2D

var speed = 10.0
var velocity = Vector2(1,0)
var turn_speed = 12


func _ready():
	pass

func _physics_process(_delta):
	rotation_degrees += turn_speed
	var collide = move_and_collide(Vector2(velocity.x * speed, velocity.y * speed))
	if collide != null:
		if collide.collider.has_method("die"):
			collide.collider.die()
		get_node("..").has_staff = true
		queue_free()

func _on_Timer_timeout():
	get_node("..").has_staff = true
	queue_free()

