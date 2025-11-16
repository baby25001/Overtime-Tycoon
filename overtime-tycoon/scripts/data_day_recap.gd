extends Node2D

@onready var money_gained = $Main/label_money_gained
@onready var total_money = $Main/label_total_money
@onready var week_goal = $Main/label_week_goal
@onready var calls_done = $Task/label_calls_done

func _ready() -> void:
	total_money.text += str(GM.curMoney)
	calls_done.text +=  str(GM.calls_done_per_scene)


func _on_texture_button_pressed() -> void:
	pass # Replace with function body.
