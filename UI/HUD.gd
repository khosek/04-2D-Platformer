extends Control


func _ready():
	pass

func update_score():
	$Score.text = "Score: " + str(Global.save_data["score"])
