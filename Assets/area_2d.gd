extends Area2D
func _ready():
	body_entered.connect(_on_body_entered)

func _on_body_entered(body):
	if body.name == "sticky" or body.is_in_group("sticky"):
		GlobalVariables.remain_hp -= 100
		$Audio_hurt2.play()
	if 0 == GlobalVariables.remain_hp:
			print("Player died!")
			await get_tree().create_timer(2).timeout
			GlobalVariables.remain_hp = 100
			get_tree().reload_current_scene()
