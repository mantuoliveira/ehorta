extends TextureButton

func _on_button_up():
	get_tree().change_scene("res://Scenes/Shop.tscn")

func _on_button_down():
	if Globals.sound_on:
		get_node("ClickSound").play()
