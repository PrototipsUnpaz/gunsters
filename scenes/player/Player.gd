extends KinematicBody2D
var Velocity = Vector2 (0,0)
var CountCharge = 6
var PosPistol = 0
func _ready():
	$Balas.text = "Balas:  " + String(CountCharge)
	pass
func _process(delta):
	$Pistolani.frame = PosPistol
	if Input.is_action_just_released("Touch") and CountCharge >= 0:
		Get_Direction()
	if Input.is_action_just_pressed("Touch") and CountCharge >= 0:
		if get_global_mouse_position().x > 466 and get_global_mouse_position().y < 500:
			PosPistol = 1
	if Input.is_action_just_pressed("Touch") and CountCharge >= 0:
		if get_global_mouse_position().x < 233 and get_global_mouse_position().y < 500:
			$Pistolani.flip_h = false
			PosPistol = 1
	if Input.is_action_just_pressed("Touch") and CountCharge >= 0:
		if get_global_mouse_position().x < 233 and get_global_mouse_position().y > 500:
			$Pistolani.flip_h = false
			PosPistol = 3
	if Input.is_action_just_pressed("Touch") and CountCharge >= 0:
		if get_global_mouse_position().x > 466 and get_global_mouse_position().y > 500:
			$Pistolani.flip_h = true
			PosPistol = 3
	if Input.is_action_just_pressed("Touch") and CountCharge >= 0:
		if get_global_mouse_position().x > 234 and get_global_mouse_position().x < 465:
			PosPistol = 5
	pass
	
func Get_Direction():
	if get_global_mouse_position().x > 466 and get_global_mouse_position().y < 500:
		$Pistolani.flip_h = true
		PosPistol = 0
	if get_global_mouse_position().x < 233 and get_global_mouse_position().y < 500:
		$Pistolani.flip_h = false
		PosPistol = 0
	if get_global_mouse_position().x < 233 and get_global_mouse_position().y > 500:
		$Pistolani.flip_h = false
		PosPistol = 2
	if get_global_mouse_position().x > 466 and get_global_mouse_position().y > 500:
		$Pistolani.flip_h = true
		PosPistol = 2
	if get_global_mouse_position().x > 234 and get_global_mouse_position().x < 465:
		PosPistol = 4
	print (get_global_mouse_position())
	pass
