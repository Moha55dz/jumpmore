extends CharacterBody2D

const gravity : float = 1100
const power : float = -350
@onready var animation_player : AnimationPlayer = $AnimationPlayer
@onready var animated_sprite_2d : AnimatedSprite2D = $AnimatedSprite2D

func _ready() -> void:
	pass 

func _physics_process(delta: float) -> void:
	velocity.y += gravity * delta
	fly()
	move_and_slide()
	if is_on_floor():
		die()

func fly():
	if Input.is_action_just_pressed("fly"):
		animation_player.play("fly_up")
		velocity.y = power
		
func die():
	animated_sprite_2d.stop()
	set_physics_process(false)
