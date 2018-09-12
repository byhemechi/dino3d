extends Spatial

# class member variables go here, for example:
# var a = 2
# var b = "textvar"
var cack = load("res://cach.tscn")
var floofr = load("res://Floor.tscn")
func _ready():
	$Timer.connect("timeout", self, "add")

func add():
	var ra = (rand_range(-4, 8))
	
	var ry = rand_range(-0.5, 1)
	
	var neer= floofr.instance()
	neer.translation.x = 20
	neer.translation.z = ra
	add_child(neer)
	var new = cack.instance()
	new.translation.x = 0
	#$Timer.wait_time = rand_range(1, 1.5)
	neer.add_child(new)
	