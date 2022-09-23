extends Sprite

func _ready():
	pass 

func _process(delta):
	#Cuando se presione la flecha derecha va a girar la torrenta conforme a las manesillas del reloj
	if Input.is_action_pressed("ui_right"):
		rotation += 0.2
	#Cuando se presione la flecha derecha va a girar la torrenta contrario a las manesillas del reloj
	if Input.is_action_pressed("ui_left"):
		rotation -= 0.2
