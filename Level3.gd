extends Node2D

func _ready():
	pass


func _on_Cdalvl3_timeout():
	get_tree().change_scene("res://scenes/Level 3/Level 3.tscn")
	pass
