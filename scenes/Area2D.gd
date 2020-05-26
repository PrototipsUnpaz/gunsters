extends Area2D



func _on_Area2D_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton and Autoload.Charge >= 1:
		if event.is_pressed():
			var mainnodes = load ("res://scenes/worldtest.gd").new()
			mainnodes.remove_objects(get_parent(), get_path())
	pass 
