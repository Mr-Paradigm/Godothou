extends CharacterBody2D
@export var bulletscene: PackedScene
var hp = 100

func _ready():
	$Timer.start()
	$Timer2.start()
	position = Vector2(500,400)

func _on_timer_timeout():
	velocity = Vector2(randf_range(-200,200),randf_range(-200,200))

func _physics_process(delta):
	var col = move_and_slide()
	if(col):
		hp -= 3

func _on_timer_2_timeout():
	var bullet = bulletscene.instantiate()
	bullet.position = position + Vector2(0,100)
	bullet.linear_velocity = Vector2(0,100)
	add_sibling(bullet)
