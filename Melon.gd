extends Area2D

var ponto = 1

func _on_body_entered(body):
	if body.name == "Playa":
		Global.somaponto += ponto
		await $CollisionShape2D.call_deferred("queue_free")
		print ("coletou")
		print (Global.somaponto)
		$Anim_banana.play("coletoubanana")
		await $Anim_banana.animation_finished
		queue_free()
