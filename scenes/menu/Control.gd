extends Control

func _on_Texturejugar_pressed():
	get_tree().get_nodes_in_group("ss")[0].get_node("Confirm2").play()
	pass 

func _on_Texturesalir_pressed():
	get_tree().get_nodes_in_group("ss")[0].get_node("Confirm").play()
	pass 

func _on_Confirm_finished():
	get_tree().quit()
	pass 

func _on_Confirm2_finished():
	get_tree().change_scene("res://scenes/level1/Level 1.tscn")
	pass

func _on_Tutorial_pressed():
	get_tree().change_scene("res://scenes/Tutorial/Tutorial.tscn")
	pass 
