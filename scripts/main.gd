extends Node2D

@export var asteroid_scene: PackedScene
@export var big_asteroid_scene: PackedScene

func _ready():
	$CanvasLayer/Label.visible = false

func player_hit():
	get_tree().paused = true
	$CanvasLayer/Label.visible = true

func _on_asteroid_timer_timeout():
	var asteroid = asteroid_scene.instantiate()
	asteroid.position = Vector2(randf_range(-95.0, 95.0), -530.0)
	asteroid.velocity = Vector2(0.0, randf_range(75.0, 100.0))
	add_child(asteroid)

func _on_big_astroid_timer_timeout():
	var big_asteroid = big_asteroid_scene.instantiate()
	big_asteroid.position = Vector2(randf_range(-85.0, 85.0), -530.0)
	big_asteroid.velocity = Vector2(0.0, randf_range(100.0, 150.0))
	add_child(big_asteroid)
