
extends KinematicBody2D


func process(delta):
	_look_at_mouse()
	_move_to_mouse()
	pass 

func _look_at_mouse():
	look_at(get_global_mouse_position())

func _move_to_mouse():
	var direction = get_global_mouse_position() - position 
	move_and_slide(position)
	pass
