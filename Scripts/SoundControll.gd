extends Area2D

func _ready():
	if Globals.sound_on:
		var music_node = get_node("BackgroundMusic")
		music_node.play(Globals.music_position)
	

func _on_input_event(_viewport, event, _shape_idx):
	if event is InputEventMouseButton and event.pressed:
		var music_node = get_node("BackgroundMusic")
		var music_icon = get_node("SoundIcon")
		
		if Globals.sound_on:
			Globals.music_position = music_node.get_playback_position()
			music_node.stop()
		else:
			music_node.play(Globals.music_position)
			
		Globals.sound_on = !Globals.sound_on
		music_icon.frame = (music_icon.frame + 1) % 2
