extends Control




func _on_quit_pressed():
	get_tree().get_nodes_in_group("sf")[0].get_node("Confirm3").play()
	pass # Replace with function body.


func _on_continue_pressed():
	get_tree().get_nodes_in_group("sf")[0].get_node("Confirm4").play()
	pass # Replace with function body.


func _on_Confirm3_finished():
	Autoload.Lives = 3
	Autoload.Charge = 6
	get_tree().change_scene("res://scenes/menu/botones.tscn")
	pass 


func _on_Confirm4_finished():
	Autoload.Lives = 3
	Autoload.Charge = 6
	get_tree().change_scene("res://scenes/WorldTest.tscn")
	pass 
