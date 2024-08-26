extends Node2D

@onready var melon = $Banana
@onready var melao = $Melao
@onready var playa = $Playa
@onready var control = $HUD/Control

func _ready():
	playa._dead.connect(_gameover)
	control.bottoms_up.connect(_gameover)
func restart():
	print("rstrt")
	Global.somaponto = 0
	get_tree().change_scene_to_file("res://fase.tscn")
	
func _gameover():
	print("gameover")
	get_tree().change_scene_to_file("res://gameover.tscn")
