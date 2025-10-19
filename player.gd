class_name Player
extends CharacterBody2D

const SPEED = 200.0
const JUMP_VELOCITY = -300.0
var jump_count = 0 

@onready var audioJump = $audioJump

func _physics_process(delta: float) -> void:
	if not is_on_floor():
		velocity += get_gravity() * delta

	#Saut
	if Input.is_action_just_pressed("jump") and jump_count == 1:
		velocity.y = JUMP_VELOCITY
		audioJump.play()
		jump_count = 2
	
	if Input.is_action_just_pressed("jump") and is_on_floor():
		velocity.y = JUMP_VELOCITY
		audioJump.play()
		jump_count = 1
	
	if !Input.is_action_just_pressed("jump") and is_on_floor():
		jump_count = 0

	var direction := Input.get_axis("move_left", "move_right")
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
		
	move_and_slide()
	
	animations(direction)
	
	if direction == 1:
		$AnimatedSprite2D.flip_h = false
	elif direction == -1:
		$AnimatedSprite2D.flip_h = true
		
func animations(direction):
	if is_on_floor():
		if direction == 0:
			$AnimatedSprite2D.play("idle")
		else:
			$AnimatedSprite2D.play("run")
	else:
		if velocity.y < 0:
			$AnimatedSprite2D.play("jump")
		elif velocity.y > 0:
			$AnimatedSprite2D.play("fall")
			
