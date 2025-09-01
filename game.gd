extends Node2D

@onready var pipe_holder : Node = $PipeHolder
@onready var spown_up : Marker2D = $"PipeHolder/spown up"
@onready var spown_low : Marker2D = $"PipeHolder/spown low"
@onready var timer : Timer = $Timer

@export var pipe_scene : PackedScene

func _ready():
	spown_pipe()




func spown_pipe():
	var y_pos = randf_range(spown_up.position.y,spown_low.position.y)
	var new_pipe = pipe_scene.instantiate() as Node2D
	new_pipe.position = Vector2(spown_up.position.x,y_pos)
	pipe_holder.add_child(new_pipe)


func _on_spown_timer_timeout():
	spown_pipe()
