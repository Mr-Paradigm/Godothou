extends Node2D
@export var bulletscene: PackedScene
var list: Array[RigidBody2D]
# Called when the node enters the scene tree for the first time.
func _ready():
	$Timer.start()

func test():
	var bullet = bulletscene.instantiate()
	bullet.position = Vector2(100,100)
	bullet.linear_velocity = Vector2(50,-10)
	add_child(bullet)

func _on_timer_timeout():
	test()
