extends Area2D

func _on_Enemy_2_input_event(viewport, event, shape_idx):
	if Input.is_action_just_pressed("Touch") and Autoload.Charge >= 1 and Autoload.prueba == false and Autoload.canShoot == true:
		queue_free()
		
	pass 

func _on_Timer_timeout():
	get_tree().call_group("Flash_enemy", "mostrar_Flash")
	queue_free()
	Autoload.Lives -= 1
	pass
