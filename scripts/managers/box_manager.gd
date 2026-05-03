class_name BoxManager
extends Node

@export var box: Node3D

var _time: float

func _process(delta: float) -> void:
	_time += delta
	box.position = Vector3.UP * sin(_time) * .25
