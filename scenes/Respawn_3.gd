extends Position2D

export (PackedScene) var ene2
func _ready():
	pass



func _on_Respawn2_timeout():
	var NewEnemy2 = ene2.instance()
	get_tree().get_nodes_in_group("WorldTest")[0].add_child(NewEnemy2)
	NewEnemy2.global_position = global_position
	pass 


func _on_Timer_timeout():
	$Respawn2.stop()
	pass 
