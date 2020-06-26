extends Sprite

func _on_Area2D_input_event(viewport, event, shape_idx):
	if Input.is_action_just_pressed("Touch"):
		get_tree().get_nodes_in_group("sfx")[0].get_node("recarga").play()
		Autoload.prueba = true
		$TimerRechar.start()
	
	pass 


func _on_Timer_timeout():
	Autoload.Charge = 6
	Autoload.prueba = false
	pass



