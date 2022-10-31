extends KinematicBody2D

var start_position = [
	Vector2(3900,100),
	Vector2(3840, 464)
	]

var player = null
var nav = null

var speed = 150

func _ready():
	position = start_position[Global.level - 1]

func _physics_process(_delta):
	nav = get_node_or_null("/root/Game/Navigation2D")
	player = get_node_or_null("/root/Game/Player_Container/Player")
	if nav != null and player != null:
		var points = nav.get_simple_path(global_position, player.global_position, true)
		if points.size() > 1:
			var target = points[1] - global_position
			var s = speed
			# For some reason this was giving my little buddy grief
#			if target.length() < s:
#				s = target.length()
			if abs(s) < 1:
				s = 0
			var direction = target.normalized()
			if direction.x < 0:
				$Sprite.flip_h = true
			else:
				
				$Sprite.flip_h = false
			var _v = move_and_slide(direction * s, Vector2.ZERO)
			

func _on_Area2D_body_entered(body):
	if body.name == "Player":
		body.queue_free()
		queue_free()
