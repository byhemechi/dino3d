extends MeshInstance

# class member variables go here, for example:
# var a = 2
# var b = "textvar"
var t = 0
func _process(delta):
	t += delta
	translation.x -= 10  * delta
	if translation.x < -10:
		queue_free()
	translation.y += 1 * delta