extends KinematicBody2D

export var constraint_left = Vector2(2510,870)
export var constraint_right = Vector2(2680,870)
export var speed = 3


func _ready():
	pass

func _physics_process(_delta):
	if not $Tween.is_active():
		var constraint = constraint_left
		$Sprite.flip_h = true
		if position != constraint_right:
			constraint = constraint_right
			$Sprite.flip_h = false
		$Tween.interpolate_property(self, "position", position, constraint, speed, Tween.TRANS_LINEAR)
		$Tween.start()

func _on_Area2D_body_entered(body):
	if body.name == "Player":
		body.queue_free()
#		queue_free()

func die():
	queue_free()
