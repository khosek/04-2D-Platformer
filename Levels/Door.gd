extends Area2D


func _ready():
	pass


func _on_Door_body_entered(body):
	if body.name == "Player" and Global.save_data["level"] == 1:
		var _s = get_tree().change_scene("res://Levels/Level2.tscn")
		Global.save_data["level"] = 2
