extends KinematicBody2D
var Velocity = Vector2 (0,0)
func _process(delta):
	look_at_mouse()
func look_at_mouse():
	if get_global_mouse_position().x > 700 and get_global_mouse_position().y < 400:
		Velocity.x = 0
		$Pistolani.flip_h = true
		$Pistolani.frame = 0
	if get_global_mouse_position().x <= 700 and get_global_mouse_position().y < 400:
		Velocity.x = 0
		$Pistolani.flip_h = false
		$Pistolani.frame = 0
	if Input.is_action_pressed("Pistolani"):
		$Pistolani.frame = 1
	if get_global_mouse_position().x <= 700 and get_global_mouse_position().y > 400:
		Velocity.x = 0
		$Pistolani.flip_h = true
		$Pistolani.frame = 2
	if get_global_mouse_position().x > 700 and get_global_mouse_position().y > 400:
		Velocity.x = 0
		$Pistolani.flip_h = false
		$Pistolani.frame = 2
	if  Input.is_action_pressed("Pistolani") and get_global_mouse_position().y > 400: 
		$Pistolani.frame = 3
		move_and_slide(Velocity)
	pass
