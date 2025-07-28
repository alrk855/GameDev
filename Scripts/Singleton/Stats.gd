extends Node

@export var Integrity : int = 0
@export var Money : int = 0
@export var Reputation : int = 0
@export var TimeLeft : int = 0

var Gender : int = 0 #0 = Default = Male
var Lang : int = 0 #0 = Default = MKD

var Day : int = 0

var subject : int = 0 #Science = 0, Geography = 1, Math = 2, General = 3
var subject_chosen : bool = false

func _ready() -> void:
	Money = 2000
	Reputation = 50
	Integrity = 50
