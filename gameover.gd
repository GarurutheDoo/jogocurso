extends CanvasLayer

@onready var fase = $".."

func _on_bt_quit_2_pressed():
	get_tree().quit()

func _on_bt_rstrt_pressed():
	get_tree().paused = false
	Global.somaponto = 0
	get_tree().change_scene_to_file("res://fase.tscn")
