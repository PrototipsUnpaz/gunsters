extends Node2D

func _ready():
	pass




func _on_cd2_timeout():
	get_tree().change_scene("res://scenes/level2/Level3.tscn")
	pass 
