extends CharacterBody2D

@export var speed = 150

func get_input():
	velocity.x = Input.get_axis("left", "right") * speed
	velocity.y = 0

func _physics_process(_delta):
	get_input()
	move_and_slide()
