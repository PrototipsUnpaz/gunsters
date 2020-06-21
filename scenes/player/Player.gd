extends KinematicBody2D
var Velocity = Vector2 (0,0)
var posPistol = 0
var Scope = preload ("res://assets/Scope.tscn")
var canShoot = true

func _process(delta): 
	if Input.is_action_just_pressed("Touch") and Autoload.Charge >= 1 and Autoload.prueba == false:
		var Sc = Scope.instance()
		add_child(Sc)
		Sc.global_position = get_global_mouse_position()
	if Autoload.prueba == false:
		_shooting()
			
	pass
	
func _shooting():
	$Pistolani.frame = posPistol
	
	if canShoot == false:    # Si la variable está en false, evita seguir ejecutando el código de shooting
		return   # Esta return hace que termine de ejecutar este metodo, entonces ya no comprobará los "if" que siguen
	
	if Input.is_action_just_released("Touch") and Autoload.Charge >= 1:
		Get_Direction()
	if Input.is_action_just_pressed("Touch") and Autoload.Charge >= 1:	
		if get_global_mouse_position().x > 466 and get_global_mouse_position().y < 500:
			shoot(1, true)
		if get_global_mouse_position().x < 233 and get_global_mouse_position().y < 500:
			shoot(1, false)
		if get_global_mouse_position().x < 233 and get_global_mouse_position().y > 500:
			shoot(3, false)
		if get_global_mouse_position().x > 466 and get_global_mouse_position().y > 500:
			shoot(3, true)
		if get_global_mouse_position().x > 234 and get_global_mouse_position().x < 465:
			shoot(5, false)
			
func Get_Direction():
	if get_global_mouse_position().x > 466 and get_global_mouse_position().y < 500:
		direction(1, true)
	if get_global_mouse_position().x < 233 and get_global_mouse_position().y < 500:
		direction(0, false)
	if get_global_mouse_position().x < 233 and get_global_mouse_position().y > 500:
		direction(2, false)
	if get_global_mouse_position().x > 466 and get_global_mouse_position().y > 500:
		direction(2, true)
	if get_global_mouse_position().x > 234 and get_global_mouse_position().x < 465:
		direction(4, false)
	pass


func shoot(pos, flip):
	canShoot = false   #  <-- Cuadno ejecuta el disparo, pone la variable en false para que no pueda disparar mas
	$CoolDown.start()  #  <-- Cuando ejecuta el disparo, activa el timer del cooldown
	$Pistolani.flip_h = flip
	posPistol = pos
	Autoload.Charge -= 1
	get_tree().call_group("Flash", "mostrar_flash")


func direction(pos, flip):
	$Pistolani.flip_h = true
	posPistol
	
func _on_CoolDown_timeout():
	canShoot = true
	pass
