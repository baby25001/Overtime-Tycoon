extends TextureButton


@export var task_name: String
@export var task_description: String
var task_id
var task_status

func _pressed() -> void:
	task_id = str(name)
	task_id = int(task_id[0]+task_id[1]+task_id[2])
	task_status = GM.tasks[int(task_id)]["index"]
	get_parent().get_parent().get_parent().open_inspector_task(task_name, task_description, task_id, task_status)
