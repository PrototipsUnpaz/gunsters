extends Node2D

func _ready():
	pass


func _on_Quit_pressed():
	get_tree().change_scene("res://scenes/menu/botones.tscn")
	pass 
