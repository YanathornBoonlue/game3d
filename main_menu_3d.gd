extends Node3D

@onready var start_button = $CanvasLayer/StartGame
@onready var exit_button = $CanvasLayer/Exit
@onready var text = $CanvasLayer/Label

func _ready():
	start_button.pressed.connect(_on_start_game_pressed)
	exit_button.pressed.connect(_on_exit_pressed)

func _on_start_game_pressed() -> void:
	# โหลด scene เกมหลัก (3D)
	get_tree().change_scene_to_file("res://Main.tscn")


func _on_exit_pressed():
	get_tree().quit()
