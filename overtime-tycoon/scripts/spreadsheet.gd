extends AnimatedSprite2D



func _on_spreadsheet_opener_closing_sheet() -> void:
	$Button.disabled = true


func _on_spreadsheet_opener_opening_sheet() -> void:
	$Button.disabled = false
