extends KinematicBody2D
var Velocity = Vector2 (0,0)
var CountCharge = 6
func _process(delta):
	if get_global_mouse_position().x > 700 and get_global_mouse_position().y < 399:
		$Pistolani.flip_h = true
		$Pistolani.frame = 0
	if get_global_mouse_position().x <= 700 and get_global_mouse_position().y < 399:
		$Pistolani.flip_h = false
		$Pistolani.frame = 0
	if Input.is_action_just_released("Touch") and get_global_mouse_position().y < 399 and CountCharge >= 0:
		$Pistolani.frame = 1
		CountCharge -= 1
		print (CountCharge)
	if get_global_mouse_position().x <= 700 and get_global_mouse_position().y > 399:
		$Pistolani.flip_h = false
		$Pistolani.frame = 2
	if get_global_mouse_position().x > 700 and get_global_mouse_position().y > 399:
		$Pistolani.flip_h = true
		$Pistolani.frame = 2
	if  Input.is_action_just_released("Touch") and get_global_mouse_position().y > 399 and CountCharge >= 0:
		$Pistolani.frame = 3
		CountCharge -= 1
		print (CountCharge)
	if get_global_mouse_position().x > 400 and get_global_mouse_position().x < 800 and get_global_mouse_position().y < 800:
		$Pistolani.frame = 4
	if  Input.is_action_just_released("Touch") and get_global_mouse_position().x > 400 and get_global_mouse_position().x < 800 and get_global_mouse_position().y < 800 and get_global_mouse_position().y > 400 and CountCharge >= 0:
		$Pistolani.frame = 5
		CountCharge -= 1
		
	pass
