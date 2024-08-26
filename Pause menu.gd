extends CanvasLayer

@onready var fase = $".."

func _ready():
	visible = false

func _unhandled_input(event):
	if event.is_action_pressed("Pause"):
		get_tree().paused = !visible
		visible = !visible

func _on_bt_quit_pressed():
	get_tree().quit()


func _on_bt_resume_pressed():
	get_tree().paused = false
	visible = false


func _on_bt_restart_pressed():
	get_tree().paused = false
	fase.restart()
