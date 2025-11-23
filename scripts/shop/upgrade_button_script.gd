extends TextureButton

var task_price
var task_id

func _on_ui_layer_give_to_upgrade_button_task(price: int, id: int) -> void:
	task_price = price
	task_id = id

func _on_pressed() -> void:
	if GM.curMoney >= GM.tasks[task_id]["upgrade_cost"][GM.tasks[task_id]["index"]]:
		GM.tasks[task_id]["index"] += 1
		var value_to_change = GM.tasks[task_id]["upgrade_value"][GM.tasks[task_id]["index"]]
		if task_id==0: # if task is telephone
			GM.add_money_telephone = value_to_change
		elif task_id==1:	# if task is spreadsheet
			GM.add_money_spreadsheet = value_to_change
		elif task_id==2: #if task meeting
			GM.add_money_meeting = value_to_change
			
