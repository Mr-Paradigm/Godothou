extends Node2D
@export var bulletscene: PackedScene
@export var okuu: CharacterBody2D
# Called when the node enters the scene tree for the first time.
func _ready():
	$Timer.start()

func test():
	var bullet = bulletscene.instantiate()
	bullet.position = okuu.position + Vector2(0,100)
	bullet.linear_velocity = Vector2(0,100)
	add_child(bullet)

func _on_timer_timeout():
	test()
