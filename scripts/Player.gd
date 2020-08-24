extends KinematicBody

export var speed = 100

func user_input(delta):
	if Input.is_action_pressed("forward"):
		move_and_collide(Vector3(0, 0, -speed * delta))
	elif Input.is_action_pressed("backward"):
		move_and_collide(Vector3(0, 0, speed * delta))
	if Input.is_action_pressed("left"):
		move_and_collide(Vector3(-speed * delta, 0, 0))
	elif Input.is_action_pressed("right"):
		move_and_collide(Vector3(speed * delta, 0, 0))

func _process(delta):
	user_input(delta)
