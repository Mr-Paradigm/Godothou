extends CharacterBody2D

var speed := 500.0
var shspeed := speed/2

func _physics_process(delta):
	velocity = Input.get_vector("Left","Right","Up","Down").normalized()*(shspeed if Input.is_physical_key_pressed(KEY_SHIFT) else speed)
	move_and_slide()
