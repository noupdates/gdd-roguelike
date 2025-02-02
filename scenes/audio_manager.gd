extends Node
@onready var arrows_sfx: AudioStreamPlayer = $sfx_arrows
@onready var background_music = AudioStreamPlayer
@onready var dead_goblin_sfx = AudioStreamPlayer


func _ready() -> void:
	background_music = AudioStreamPlayer.new()
	add_child(background_music)
	background_music.stream = preload("res://funny_battle_music.mp3")  
	background_music.play()
	
	arrows_sfx = AudioStreamPlayer.new()
	add_child(arrows_sfx)
	arrows_sfx.stream = preload("res://arrows.mp3")
	
	dead_goblin_sfx = AudioStreamPlayer.new()
	add_child(dead_goblin_sfx)
	dead_goblin_sfx.stream = preload("res://blood_explosion_sfx.mp3")
	
func play_arrow_sfx():
	if arrows_sfx.stream:
		arrows_sfx.play()
		
func play_dead_goblin_sfx():
	if dead_goblin_sfx.stream:
		dead_goblin_sfx.play()
		
func set_volume(volume_db: float):
	background_music.volume_db = volume_db

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
