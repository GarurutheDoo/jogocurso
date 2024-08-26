extends Area2D

@onready var control = $"../HUD/Control"

func _on_body_entered(_body):
	await $CollisionShape2D.call_deferred("queue_free")
	$Anim_clock.play("Coletou")
	control.secs += 5
	print ("puff")
	await $Anim_clock.animation_finished
	queue_free()
