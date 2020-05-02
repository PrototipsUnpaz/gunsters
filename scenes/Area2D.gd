extends Area2D



func _on_Area2D_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton:
		if event.is_pressed():
			print ("remove this")
	pass # Replace with function body.
