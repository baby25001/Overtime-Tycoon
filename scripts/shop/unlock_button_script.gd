extends TextureButton

var task_id
var task_price

func _on_ui_layer_give_to_unlock_button_task(price: int, id: int) -> void:
	task_price = price
	task_id = id


func _on_pressed() -> void:
	if GM.curMoney >= task_price && GM.tasks[task_id]["owned"] == false:
		GM.tasks[task_id]["index"] += 1
		GM.tasks[task_id]["owned"] = true
		GM.curMoney -= task_price
