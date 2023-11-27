extends CharacterBody2D

func _ready():
	$Timer.start()
	position = Vector2(600,600)

func _on_timer_timeout():
	velocity = Vector2(randf_range(-200,200),randf_range(-200,200))

func _physics_process(delta):
	move_and_slide()
