extends Label

var clock = 0


func _process(delta: float) -> void:
	if clock<1:
		clock += delta
		position.y -= 0.8
		modulate.a -= delta
	if modulate.a == 0: queue_free()
	
