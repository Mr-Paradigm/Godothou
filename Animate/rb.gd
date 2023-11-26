extends RigidBody2D

func _ready():
	$Timer.start()

func _on_timer_timeout():
	apply_impulse(Vector2(randf_range(-100,100),randf_range(-100,100)))
