extends Position2D
export (PackedScene) var ene

func _ready():
	pass


func _on_Respawn_timeout():
	var NewEnemy = ene.instance()
	get_tree().get_nodes_in_group("WorldTest")[0].add_child(NewEnemy)
	NewEnemy.global_position = global_position
	pass
	
	


func _on_Timer_timeout():
	$Respawn.stop()
	pass 
