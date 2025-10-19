class_name Enemy
extends CharacterBody2D

@onready var animationPlayer: AnimationPlayer = $AnimationPlayer
@onready var rc_left: RayCast2D = $RaycastLeft
@onready var rc_right: RayCast2D = $RaycastRight
@onready var sprite: Sprite2D = $Sprite2D
@onready var soundHit: AudioStreamPlayer2D = $soundHit
@onready var soundExplode: AudioStreamPlayer2D = $soundExplode
@onready var explosion: CPUParticles2D = $explosion

const SPEED = 100.0
const JUMP_VELOCITY = -400.0

var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")
var direction = Vector2.LEFT
var health = 1

func _physics_process(delta: float) -> void:
	# appliquer la gravité
	if not is_on_floor():
		velocity.y += gravity * delta

	# déplacement horizontal
	velocity.x = direction.x * SPEED
	move_and_slide()

	# collision mur -> changer direction
	if is_on_wall():
		direction *= -1

	# animation flip
	_set_animation()

	# mort
	if health <= 0:
		_die()

func _set_animation() -> void:
	sprite.flip_h = direction.x < 0
	animationPlayer.play("run")

func _on_get_damaged_box_body_entered(body: Node2D) -> void:
	if body.name.to_lower().contains("player"):
		health -= 1
		soundHit.play()

func _die() -> void:
	$CollisionShape2D.disabled = true
	animationPlayer.play("death")
	set_physics_process(false)

func _on_animation_player_animation_finished(anim_name: StringName) -> void:
	if anim_name == "death":
		explosion.emitting = true   
		soundExplode.play()         
		await get_tree().create_timer(0.5).timeout
		queue_free()
