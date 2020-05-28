extends Area2D

func _on_Enemy_2_input_event(viewport, event, shape_idx):
	if event is InputEventScreenTouch and Autoload.Charge >= 1:
		if event.is_touched():
			var mainnodes = load ("res://scenes/worldtest.gd").new()
			mainnodes.remove_objects(get_parent(), get_path())
	pass 

func _on_Timer_timeout():
	get_tree().call_group("Flash_enemy", "mostrar_Flash")
	queue_free()
	Autoload.Lives -= 1
	print (Autoload.Lives)
	pass
