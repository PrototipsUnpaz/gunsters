extends Area2D





func _on_Enemy_2_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton:
		if event.is_pressed():
			var mainnodes = load ("res://scenes/worldtest.gd").new()
			mainnodes.remove_objects(get_parent(), get_path())
	pass 
