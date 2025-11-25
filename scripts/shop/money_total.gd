extends Label



func _process(_delta: float) -> void:
	var current_money = GM.curMoney
	text = "$" + str(current_money)
