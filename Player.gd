extends KinematicBody

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

var angle = Vector3(0, 0, 0)

func _physics_process(delta):
	if 1 < 0:
		angle.y += 0.98
	if Input.is_action_just_pressed("jump"):
		angle.y = 17
	if Input.is_action_pressed("ui_left"):
		angle.z = -10
	elif Input.is_action_pressed("ui_right"):
		angle.z = 10
	else:
		angle.z = 0
	move_and_slide(angle)
	translation.x = 0