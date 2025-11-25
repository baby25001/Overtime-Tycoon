extends TextureButton

@export var decor_name: String
@export var decor_description: String
@export var decor_price: int
@onready var item_status = get_parent().get_node("item_status")
var decor_id

func _ready() -> void:
	decor_id = str(name)
	var int_cur_id = int(decor_id)
	if GM.pajangan[int_cur_id]["owned"] == true:
		get_node("/root/UpgradeShop/UILayer/shop_tab/decor/slot"+decor_id+"/"+decor_id+"").disabled = true
		item_status.texture = load("res://sprites1/upgrade_shop/out of stock (use on top of the product).png")
		disabled = true
	elif GM.pajangan[int_cur_id]["owned"] == false:
		get_node("/root/UpgradeShop/UILayer/shop_tab/decor/slot"+decor_id+"/"+decor_id+"").disabled = false
		item_status.texture = load("res://sprites1/upgrade_shop/buy default.png")

func _pressed() -> void:
	var timer = get_parent().get_parent().get_node("Timer")
	timer.start()
	decor_id = str(name)
	var int_cur_id = int(decor_id)
	if GM.pajangan[int_cur_id]["owned"] == false:
		get_parent().get_node("item_status").texture = load("res://sprites1/upgrade_shop/buy when click.png")
	get_parent().get_parent().get_parent().get_parent().open_inspector(decor_name, decor_description, decor_price, decor_id)

func _on_buy_button_give_to_decor_button() -> void:
	decor_id = str(name)
	var int_cur_id = int(decor_id)
	if GM.pajangan[int_cur_id]["owned"] == true:
		get_node("/root/UpgradeShop/UILayer/shop_tab/decor/slot"+decor_id+"/"+decor_id+"").disabled = true
		get_parent().get_node("item_status").texture = load("res://sprites1/upgrade_shop/out of stock (use on top of the product).png")
	elif GM.pajangan[int_cur_id]["owned"] == false:
		get_node("/root/UpgradeShop/UILayer/shop_tab/decor/slot"+decor_id+"/"+decor_id+"").disabled = false


func _on_timer_timeout() -> void:
	decor_id = str(name)
	var int_cur_id = int(decor_id)
	if GM.pajangan[int_cur_id]["owned"] == false:
		get_parent().get_node("item_status").texture = load("res://sprites1/upgrade_shop/buy default.png")
