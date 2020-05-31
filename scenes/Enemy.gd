extends KinematicBody2D
var enemyInitialPosition

func _ready():
	enemyInitialPosition = true
	interpolate_position()
	pass
	
func interpolate_position():
	$EnemyTween.interpolate_property(self, "position", self.position + Vector2(400,500),self.position + Vector2(800,500), 5, Tween.TRANS_LINEAR, Tween.EASE_IN)
	$EnemyTween.start()
	yield($EnemyTween,"tween_completed")
	queue_free()
	pass

func _on_EnemyTween_tween_completed(object, key):
	enemyInitialPosition = !enemyInitialPosition
	interpolate_position()
	pass



