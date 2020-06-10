extends Sprite

func _ready():
	pass


func _on_Despawn_timeout():
	queue_free()
	pass 
