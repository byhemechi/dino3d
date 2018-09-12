extends MeshInstance

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _process(delta):
	if $Area.get_overlapping_bodies().size():
		get_tree().paused = true