extends Area2D

# Karakter bu alana girdiğinde tetiklenecek fonksiyon
func _ready():
	body_entered.connect(_on_body_entered)

func _on_body_entered(body):
	# Eğer giren nesne oyuncu ise (örneğin grubunu "Player" yaptıysan veya düğüm adı "Player" ise)
	if body.name == "sticky" or body.is_in_group("sticky"):
		print("Player died!")
		

		get_tree().reload_current_scene()
