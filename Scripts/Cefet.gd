extends TextureButton


func _on_button_up():
	var _err = OS.shell_open(Globals.cefetmg_link)
