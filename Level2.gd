extends Node2D

func _ready():
	pass


func _on_Cdalvl2_timeout():
	get_tree().change_scene("res://scenes/Nivel2/Nivel2.tscn")
	pass 
