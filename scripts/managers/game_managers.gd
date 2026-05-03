extends Node
class_name GameManager

signal initialized

@export var game_data:GameData

var managers:Array[Manager]:
	get:
		return []
var game_state:GameState

func initialize():
	game_state = GameState.new(game_data)
	for manager in managers:
		manager.initialize(self)
	initialized.emit()

func _ready() -> void:
	initialize()
