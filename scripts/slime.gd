extends Node2D

const SPEED = 60

var direction = 1

# Adding as reference by hitting control while drag+drop
@onready var raycast_right = $RaycastRight
@onready var raycast_left = $RaycastLeft

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if raycast_right.is_colliding():
		direction = -1
	if raycast_left.is_colliding():
		direction = 1

	position.x += direction * SPEED * delta
