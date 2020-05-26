extends Node2D

var Enemy = preload("res://scenes/Enemy.tscn/")
var Enemy_2 = preload ("res://scenes/Enemy_2.tscn/")
func _ready():
	add_new_scenes(300,400)
	add_new_scenes_2(300,500)
	pass
	
func add_new_scenes(mtop,mleft):
	var mobject = Enemy.instance()
	add_child(mobject)
	mobject.set_position(Vector2(mtop,mleft))
	pass
	
func add_new_scenes_2(mtop,mleft):
	var mobject2 = Enemy_2.instance()
	add_child(mobject2)
	mobject2.set_position(Vector2(mtop,mleft))
	pass
	
func remove_objects(mainnode,objectpath):
	mainnode.get_node(objectpath).queue_free()
	

	
	

