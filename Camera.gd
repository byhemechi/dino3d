extends Camera

# class member variables go here, for example:
# var a = 2
# var b = "textvar"
func _process(delta):
	if get_tree().paused:
		rotation_degrees += (Vector3(-20, -25, 0) - rotation_degrees) / Vector3(10, 10, 10)
		translation.x += (-1 - translation.x) / 10
		translation.z += (get_node("../RigidBody").translation.z + 2 - translation.z) / 10
		translation.y += (get_node("../RigidBody").translation.y + 1 - translation.y) / 10
	else:
		translation.z += (get_node("../RigidBody").translation.z / 2 - translation.z) / 10