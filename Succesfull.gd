extends Control

func _ready():
	pass


func _on_Control_pressed():
	get_tree().get_nodes_in_group("FF")[0].get_node("Buttonsound").play()
	pass # Replace with function body.
	pass 



func _on_Buttonsound_finished():
	Autoload.Lives = 3
	Autoload.Charge = 6
	get_tree().change_scene("res://scenes/menu/botones.tscn")
	pass 
	
