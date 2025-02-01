extends CharacterBody2D

const SPEED = 300.0
const JUMP_VELOCITY = -400.0
@onready var sprite_2d: AnimatedSprite2D = $Sprite2D

func _physics_process(delta: float) -> void:

	# Animations	
	if Input.is_action_pressed("ui_accept"):
		sprite_2d.animation = "shooting"
	elif (velocity.x > 1 || velocity.x < -1 || velocity.y > 1 || velocity.y < -1):
		sprite_2d.animation = "moving"
	else:
		sprite_2d.animation = "default"

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction_x := Input.get_axis("ui_left", "ui_right")
	var direction_y := Input.get_axis("ui_up", "ui_down")
	
	# Create a direction vector
	var direction := Vector2(direction_x, direction_y)

	# Normalize the direction vector to ensure consistent speed
	if direction.length() > 0:
		direction = direction.normalized()

	# Set the velocity based on the normalized direction
	velocity = direction * SPEED
		
	move_and_slide()
	
	if direction_x < 0:
		sprite_2d.flip_h = true  # Face left
	elif direction_x > 0:
		sprite_2d.flip_h = false  # Face right
