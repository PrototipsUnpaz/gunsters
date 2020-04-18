extends KinematicBody2D
var Velocity = Vector2 (0,0)
func _process(delta):
	 look_at_mouse()
		
func look_at_mouse():
	if get_global_mouse_position().x > 300:
		Velocity.x = 0
		$Pistolani.flip_h = true
		$Pistolani.frame = 0
	if get_global_mouse_position().x <= 300:
		Velocity.x = 0
		$Pistolani.flip_h = false
		$Pistolani.frame = 0
	
	move_and_slide(Velocity)
	pass
