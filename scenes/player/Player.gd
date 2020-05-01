extends KinematicBody2D
var Velocity = Vector2 (0,0)
func _process(delta):
	if get_global_mouse_position().x > 700 and get_global_mouse_position().y < 400:
		$Pistolani.flip_h = true
		$Pistolani.frame = 0
	print (get_global_mouse_position())
	if get_global_mouse_position().x <= 700 and get_global_mouse_position().y < 400:
		$Pistolani.flip_h = false
		$Pistolani.frame = 0
	if Input.is_action_pressed("Touch"):
		$Pistolani.frame = 1
	if get_global_mouse_position().x <= 700 and get_global_mouse_position().y > 400:
		$Pistolani.flip_h = false
		$Pistolani.frame = 2
	if get_global_mouse_position().x > 700 and get_global_mouse_position().y > 400:
		$Pistolani.flip_h = true
		$Pistolani.frame = 2
	if  Input.is_action_pressed("Touch") and get_global_mouse_position().y > 400: 
		$Pistolani.frame = 3
	if get_global_mouse_position().x > 400 and get_global_mouse_position().x < 800 and get_global_mouse_position().y < 500:
		$Pistolani.frame = 4
	if  Input.is_action_pressed("Touch") and get_global_mouse_position().x > 400 and get_global_mouse_position().x < 800 and get_global_mouse_position().y < 500: 
		$Pistolani.frame = 5
		move_and_slide(Velocity)
	pass
