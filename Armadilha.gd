extends Area2D

@onready var playa = $"../Playa"

func _on_body_entered(body):
	if body.name == "Playa":
		print("pow")
		playa._damage()
		
