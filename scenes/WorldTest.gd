extends Node2D
var Enemy = preload("res://scenes/Enemy.tscn/")
var Enemy_2 = preload ("res://scenes/Enemy_2.tscn/")
func _ready():
	$Timer.start()
	add_new_scenes(300,800)
	add_new_scenes_2(300,300)
	pass
func _process(delta):
	
	if Autoload.Lives <= 0:
		get_tree().change_scene("res://scenes/continuar/Gameover.tscn")
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
	

func _on_Timer_timeout():
	get_tree().change_scene("res://scenes/Level1Complete/Level_1_Complete.tscn")
	pass 
	

	





