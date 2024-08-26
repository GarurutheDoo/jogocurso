extends Area2D

@onready var playa = $"../Playa"

func _on_body_entered(body):
	if body.name == "Playa":
		await $CollisionShape2D.call_deferred("queue_free")
		print("pow")
		$Anim_mau.play("coletoumau")
		playa._damage()
		await $Anim_mau.animation_finished
		queue_free()
		
	
