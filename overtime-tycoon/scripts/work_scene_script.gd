extends Node2D

var money_added_animation := preload("res://scenes/money_added.tscn")


func _on_telephone_play_added_money(amount_added: int) -> void:
	spawn_add_money(1020, 520, amount_added) 
	# !position is fixed (please change if the telephone position is changed aswell)


func spawn_add_money(xpos, ypos, added):
	var moneyAdded = money_added_animation.instantiate()
	moneyAdded.position = Vector2(xpos, ypos)
	moneyAdded.text = "+ $ " + str(added)
	
	add_child(moneyAdded)
