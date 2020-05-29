extends AnimatedSprite

func _ready():
	Autoload.Lives = 2
	$Anilives.frames -= 1
	pass
