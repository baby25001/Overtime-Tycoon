extends Control
	
func _ready() -> void:
	if GM.loop_count == 4:
		get_node("/root/DayRecap/InfoLayer").visible = true
		get_node("/root/DayRecap/PauseLayer/PauseDayRecap").visible = true
		get_node("/root/DayRecap/PauseLayer/PauseDayRecap/Pause").visible = true	
		get_tree().paused = false	
func _on_pause_pressed() -> void:
	get_node("Background").visible = true
	get_node("PauseMenuBox").visible = true
	get_tree().paused = true
	
func _on_resume_pressed() -> void:
	get_node("Background").visible = false
	get_node("PauseMenuBox").visible = false
	get_tree().paused = false
	
func _on_quit_pressed() -> void:
	get_tree().quit()


func _on_main_menu_pressed() -> void:
	GM.game_start_count = 0
	GM.main_menu_count += 1
	if GM.loop_count > 0:
		GM.game_start_count = 1
	if ((GM.main_menu_count%2) == 1) and (GM.game_start_count == 0):
		get_node("/root/DayRecap/InfoLayer").visible = false
		get_node("/root/DayRecap/PauseLayer/PauseDayRecap").visible = false
		get_node("/root/DayRecap/PauseLayer/PauseDayRecap/Pause").visible = false	
		get_tree().paused = true	 
		GM.emit_signal("ahhh")
		GM.loop_count = 4
		get_tree().change_scene_to_file("res://scenes/game.tscn")
		print("1")
	elif ((GM.main_menu_count%2) == 0) and (GM.game_start_count == 0):
		get_node("/root/DayRecap/InfoLayer").visible = false
		get_node("/root/DayRecap/PauseLayer/PauseDayRecap").visible = false
		get_node("/root/DayRecap/PauseLayer/PauseDayRecap/Pause").visible = false	
		get_tree().paused = true	 
		GM.emit_signal("ahhh")
		GM.loop_count = 4
		get_tree().change_scene_to_file("res://scenes/game.tscn")
		print("2")
	elif ((GM.main_menu_count%2) == 1) and (GM.game_start_count == 1):
		get_node("/root/DayRecap/InfoLayer").visible = false
		get_node("/root/DayRecap/PauseLayer/PauseDayRecap").visible = false
		get_node("/root/DayRecap/PauseLayer/PauseDayRecap/Pause").visible = false	
		get_tree().paused = true	 
		GM.emit_signal("ahhh") 
		GM.loop_count = 4
		get_tree().change_scene_to_file("res://scenes/game.tscn")
		print("3")
	elif ((GM.main_menu_count%2) == 0) and (GM.game_start_count == 1):
		get_node("/root/DayRecap/InfoLayer").visible = false
		get_node("/root/DayRecap/PauseLayer/PauseDayRecap").visible = false
		get_node("/root/DayRecap/PauseLayer/PauseDayRecap/Pause").visible = false	
		get_tree().paused = true	 
		GM.emit_signal("ahhh")
		GM.loop_count = 4
		get_tree().change_scene_to_file("res://scenes/game.tscn")
		print("4")

	if GM.main_menu_count > 0:
		GM.emit_signal("continue_option")
