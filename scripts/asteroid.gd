extends Area2D

var velocity = Vector2.ZERO
var rotation_speed = randf_range(-4.0, 4.0)

func _physics_process(delta):
	position += velocity * delta
	rotation += rotation_speed * delta

func _on_visible_on_screen_notifier_2d_screen_exited():
	queue_free()

func _on_body_entered(body):
	if body.name == "Player":
		get_tree().current_scene.player_hit()
