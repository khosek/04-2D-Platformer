extends Node2D


onready var Player = load("res://Player/Player.tscn")
var initial_position = [
	Vector2(200,0),
	Vector2(2000,0)
	]

func _process(_delta):
	if not has_node("Player"):
		var player = Player.instance()
		player.position = initial_position[Global.save_data["level"] - 1]
		player.name = "Player"
		add_child(player)
