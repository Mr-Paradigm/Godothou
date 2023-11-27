extends CharacterBody2D
@export var bulletscene: PackedScene

@onready var floating = $AnimatedSprite2D
var speed := 500.0
var shspeed := speed/2

func _ready():
	$Timer.start()
	position = Vector2(500,1000)


func _physics_process(delta):
	floating.play("fly")
	
	velocity = Input.get_vector("Left","Right","Up","Down").normalized()*(shspeed if Input.is_physical_key_pressed(KEY_SHIFT) else speed)
	var col = move_and_slide()
	if(col):
		print("hit")
	if(Input.is_physical_key_pressed(KEY_Z) && $Timer.is_stopped()):
		fire()
		$Timer.start()

func _on_timer_timeout():
	if(Input.is_physical_key_pressed(KEY_Z)):
		fire()
	else:
		$Timer.stop()

func fire():
	var bullet = bulletscene.instantiate()
	bullet.position = position + Vector2(0,-100)
	bullet.linear_velocity = Vector2(0,-200)
	add_sibling(bullet)
