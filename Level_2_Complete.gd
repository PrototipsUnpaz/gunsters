extends Node2D

func _ready():
	pass


func _on_Cd_timeout():
	get_tree().change_scene("res://scenes/Level1Complete/Level2.tscn")
	pass 


func _on_Timer_timeout():
	pass # Replace with function body.
