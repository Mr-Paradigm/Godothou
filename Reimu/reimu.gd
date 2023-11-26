extends CharacterBody2D


var speed := 500.0

func _physics_process(delta):
	movement()

func movement():
	var x_move = Input.get_action_strength("Right") - Input.get_action_strength("Left")
	var y_move = Input.get_action_strength("Down") - Input.get_action_strength("Up")
	var mov = Vector2(x_move,y_move)
	velocity = mov.normalized()*speed
	move_and_slide()
