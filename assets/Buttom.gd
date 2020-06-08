extends Sprite
func _ready():
	pass

func _on_Area2D_input_event(viewport, event, shape_idx):
	Autoload.prueba = true
	$TimerRechar.start()
	pass 


func _on_Timer_timeout():
	Autoload.Charge = 6
	Autoload.prueba = false
	pass



