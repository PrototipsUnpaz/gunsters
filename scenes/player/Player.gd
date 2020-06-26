extends KinematicBody2D
var Velocity = Vector2 (0,0)
var posPistol = 0
var Scope = preload ("res://assets/Scope.tscn")


func _process(delta): 
	if Input.is_action_just_pressed("Touch") and Autoload.Charge >= 1 and Autoload.canShoot == true and Autoload.prueba == false:
		var Sc = Scope.instance()
		add_child(Sc)
		Sc.global_position = get_global_mouse_position()
	if Autoload.prueba == false:
		_shooting()
		print(Autoload.canShoot)
			
	pass
	
func _shooting():
	$Pistolani.frame = posPistol
	if Input.is_action_just_released("Touch") and Autoload.Charge >= 1 :
		Get_Direction()
	if Input.is_action_just_pressed("Touch") and Autoload.Charge >= 1 and Autoload.canShoot == true :
		if get_global_mouse_position().x > 466 and get_global_mouse_position().y < 500:
			shoot(1, true)
	if Input.is_action_just_pressed("Touch") and Autoload.Charge >= 1 and Autoload.canShoot == true:
		if get_global_mouse_position().x < 233 and get_global_mouse_position().y < 500:
			shoot(1, false)
	if Input.is_action_just_pressed("Touch") and Autoload.Charge >= 1 and Autoload.canShoot == true:
		if get_global_mouse_position().x < 233 and get_global_mouse_position().y > 500:
			shoot(3, false)
	if Input.is_action_just_pressed("Touch") and Autoload.Charge >= 1 and Autoload.canShoot == true :
		if get_global_mouse_position().x > 466 and get_global_mouse_position().y > 500:
			shoot(3, true)
	if Input.is_action_just_pressed("Touch") and Autoload.Charge >= 1 and Autoload.canShoot == true:
		if get_global_mouse_position().x > 234 and get_global_mouse_position().x < 465:
			shoot(5, false)
			
func Get_Direction():
	if get_global_mouse_position().x > 466 and get_global_mouse_position().y < 500:
		shoot(0, true, false)
	if get_global_mouse_position().x < 233 and get_global_mouse_position().y < 500:
		shoot(0, false, false)
	if get_global_mouse_position().x < 233 and get_global_mouse_position().y > 500:
		shoot(2, false, false)
	if get_global_mouse_position().x > 466 and get_global_mouse_position().y > 500:
		shoot(2, true, false)
	if get_global_mouse_position().x > 234 and get_global_mouse_position().x < 465:
		shoot(4, false, false)
	
	pass
	pass

func shoot(pos, flip, is_shoot = true):
	$Pistolani.flip_h = flip
	posPistol = pos
	if is_shoot and Autoload.canShoot:
		Autoload.canShoot = false
		$Cd.start()
		Autoload.Charge -= 1
		get_tree().call_group("Flash", "mostrar_flash")
	
func _on_Cd_timeout():
	Autoload.canShoot = true
	pass 
	

	







