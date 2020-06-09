extends Control




func _on_quit_pressed():
	Autoload.Lives = 3
	Autoload.Charge = 6
	get_tree().change_scene("res://scenes/menu/botones.tscn")
	pass # Replace with function body.


func _on_continue_pressed():
	Autoload.Lives = 3
	Autoload.Charge = 6
	get_tree().change_scene("res://scenes/WorldTest.tscn")
	pass # Replace with function body.
