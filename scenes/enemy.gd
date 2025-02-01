extends RigidBody2D

@onready var game_manager: Node = $"../GameManager"


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_area_2d_body_entered(body: Node2D) -> void:
	if (body.name == "CharacterBody2D"):
		var x_delta = body.position.x - position.x
		var y_delta = position.y - body.position.y
		print(str(x_delta) + " " + str(y_delta))
		print("lose health")
		body.get_pushed_back(x_delta, y_delta)
		game_manager.decrease_health()
		
