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


'''extends CanvasLayer

signal start_game

func update_score(score):
	$ScoreLabel.text = str(score)

func show_message(text):
	$MessageLabel.text = text
	$MessageLabel.show()
	$MessageTimer.start()

func show_game_over():
	show_message("Game Over")
	# Wait until the MessageTimer has counted down.
	await $MessageTimer.timeout

	$MessageLabel.text = "Let's Eat!!!"
	$MessageLabel.show()
	# Make a one-shot timer and wait for it to finish.
	await get_tree().create_timer(1.0).timeout
	$Button.show()

func _on_button_pressed():
	$Button.hide()
	emit_signal("start_game")


func _on_message_timer_timeout():
	$MessageLabel.hide()'''
