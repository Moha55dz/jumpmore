extends Node2D

const scroll_speed : float = 200

func _ready():
	pass 

func _process(delta):
	position.x -= scroll_speed * delta
	pass

func _on_screen_exited():
	queue_free()
	pass
