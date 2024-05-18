extends Area2D

var health: int = 3: set = _set_health, get = _get_health
@onready var timer = $Timer
@onready var canvas_label_health = %CanvasLabel_Health

func _set_health(reduce_health: int) -> void:
	health += reduce_health

func _get_health() -> int:
	return health

func _on_body_entered(body):
	#health -= 1
	_set_health(-1)
	print("You died.")
	canvas_label_health.text = str(health) + " lifes left"
	Engine.time_scale = 0.5
	body.get_node("CollisionShape2D").queue_free()
	timer.start()


func _on_timer_timeout():
	Engine.time_scale = 1.0
	get_tree().reload_current_scene()
	health = _get_health()
