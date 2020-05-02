extends Node2D

var Enemy = preload("res://scenes/Enemy.tscn/")

func _ready():
	add_new_scenes(30,380)
	add_new_scenes(1100,120)
	pass
	
func add_new_scenes(mtop,mleft):
	var mobject = Enemy.instance()
	add_child(mobject)
	mobject.set_position(Vector2(mtop,mleft))
	pass
