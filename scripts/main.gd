extends Node2D

@export var asteroid_scene: PackedScene
@export var big_asteroid_scene: PackedScene

func _on_asteroid_timer_timeout():
	var asteroid = asteroid_scene.instantiate()
	
	print("asteroid spawned")

	# spawn zone about ~530px above center, ~190px wide
	asteroid.position = Vector2(
		randf_range(-95.0, 95.0),
		-530.0
	)
	
	asteroid.velocity = Vector2(0.0, randf_range(75.0, 100.0))
	
	add_child(asteroid)

func _on_big_astroid_timer_timeout() -> void:
	var big_asteroid = big_asteroid_scene.instantiate()
	
	print("BIG asteroid spawned")
	
	big_asteroid.position = Vector2(
		randf_range(-85.0, 85.0),
		-530.0
	)
	
	big_asteroid.velocity = Vector2(0.0, randf_range(100.0, 150.0))
	
	add_child(big_asteroid)
