extends Area2D

@onready var playa = $"../Playa"



func _on_body_entered(body):
	pass
	visible = false
	if body.name == "Playa":
		get_tree().change_scene_to_file("res://gameover.tscn")
		
