extends Area2D


func _ready():
	body_entered.connect(_on_body_entered)

func _on_body_entered(body):
	if body.name == "sticky" or body.is_in_group("sticky"):
		print("Player died!")
		get_tree().reload_current_scene()
