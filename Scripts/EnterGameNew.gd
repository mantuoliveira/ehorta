extends TextureButton

func _on_button_up():
	var sound_node = get_node("../SoundControll/BackgroundMusic")
	Globals.music_position = sound_node.get_playback_position()
	get_tree().change_scene("res://Scenes/NewGame.tscn")


func _on_button_down():
	if Globals.sound_on:
		get_node("ClickSound").play()
