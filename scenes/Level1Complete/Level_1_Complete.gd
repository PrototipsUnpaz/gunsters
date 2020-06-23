extends Node2D

func _on_Cd_timeout():
	get_tree().change_scene("res://scenes/Level1Complete/Level2.tscn")
	pass 
