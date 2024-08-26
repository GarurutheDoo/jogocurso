extends Control

@onready var cont_pont = $"MarginContainer/hbox 1"/cont_pont as Label

@onready var timer = $timer as Timer

@onready var timer_count = $MarginContainer/hbox2/timer_count as Label


signal bottoms_up() #fim do tempo

var mins = 0
var secs = 0

@export_range(0,2) var min_padrao = 0
@export_range(0,59) var sec_padrao = 30

func _ready():
	cont_pont.text = str("%06d" % Global.somaponto)
	timer_count.text = str("%02d" % min_padrao) + ":" + str("%02d" % sec_padrao)
	mins = min_padrao
	secs = sec_padrao

func _process(_delta):
	cont_pont.text = str("%02d" % Global.somaponto)
	if mins == 0 && secs == 0:
		emit_signal("bottoms_up")

func _on_timer_timeout(): #trocando valores do timer
	
	if secs >=60:
		mins += 1
		secs %= 60
	
	
	if secs == 0:
		if mins > 0:
			mins -= 1
			secs = 60
			
	secs -= 1
	
	timer_count.text = str("%02d" % mins) + ":" + str("%02d" % secs)
