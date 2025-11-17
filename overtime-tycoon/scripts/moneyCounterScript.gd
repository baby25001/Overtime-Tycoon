extends Label


func addMoney (amount):
	GM.curMoney += amount
	GM.money_gained_per_scene += amount
	text = ": $" + str(GM.money_gained_per_scene)
