extends KinematicBody2D

func _process(delta):
	 look_at_mouse()
		
func look_at_mouse():
	look_at(get_global_mouse_position())
