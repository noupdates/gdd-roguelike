extends Node
@onready var sfx_arrows: AudioStreamPlayer = $sfx_arrows
@onready var background_music = AudioStreamPlayer
# Called when the node enters the scene tree for the first time.

func _ready() -> void:
	background_music = AudioStreamPlayer.new()
	add_child(background_music)
	background_music.stream = preload("res://funny_battle_music.mp3")  
	background_music.play()
	
	sfx_arrows = AudioStreamPlayer.new()
	add_child(sfx_arrows)
	sfx_arrows.stream = preload("res://arrows.mp3")
	
func play_arrow_sound():
	if sfx_arrows.stream:
		sfx_arrows.play()
		
func set_volume(volume_db: float):
	background_music.volume_db = volume_db

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
