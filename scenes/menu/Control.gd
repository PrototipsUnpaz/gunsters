extends Control


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Texturejugar_pressed():
	get_tree().get_nodes_in_group("ss")[0].get_node("Confirm2").play()
	pass # Replace with function body.


func _on_Texturesalir_pressed():
	get_tree().get_nodes_in_group("ss")[0].get_node("Confirm").play()
	pass # Replace with function body.





func _on_Confirm_finished():
	get_tree().quit()
	pass 


func _on_Confirm2_finished():
	get_tree().change_scene("res://scenes/WorldTest.tscn")
	pass
