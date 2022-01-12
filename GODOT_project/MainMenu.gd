extends NinePatchRect

var laps = 1

func check_participants():
	var num = 0
	if get_node("VBoxContainer2/HBoxContainer/CheckBox").is_pressed():
		num += 1
	if get_node("VBoxContainer2/HBoxContainer/CheckBox2").is_pressed():
		num += 1
	if get_node("VBoxContainer2/HBoxContainer/CheckBox3").is_pressed():
		num += 1
	if get_node("VBoxContainer2/HBoxContainer/CheckBox4").is_pressed():
		num += 1
		
	if num == 0:
		return false
	else:
		return true

func _ready():
	get_node("VBoxContainer/Start").connect("pressed",self,"start_game")
	get_node("VBoxContainer/Exit").connect("pressed",self,"exit_game")
	get_node("VBoxContainer/Credits").connect("pressed",self,"show_credits")
	get_node("creators/Button").connect("pressed",self,"back2")
	get_node("VBoxContainer/Button").connect("pressed",self,"show_rules")
	get_node("VBoxContainer/Settings").connect("pressed",self,"set_things")
	get_node("VBoxContainer2/HBoxContainer3/Button").connect("pressed",self,"back")
	get_node("buttons/+").connect("pressed",self,"plus")
	get_node("buttons/-").connect("pressed",self,"minus")
	
func _process(delta):
	get_node("Label").text = str(laps)
	
	if get_node("VBoxContainer2/HBoxContainer/CheckBox").is_pressed():
		global.add_human()
	else:
		global.remove_human()
		
	if get_node("VBoxContainer2/HBoxContainer/CheckBox2").is_pressed():
		global.add_undead()
	else:
		global.remove_undead()

	if get_node("VBoxContainer2/HBoxContainer/CheckBox3").is_pressed():
		global.add_elf()
	else:
		global.remove_elf()

	if get_node("VBoxContainer2/HBoxContainer/CheckBox4").is_pressed():
		global.add_outsider()
	else:
		global.remove_outsider()

func start_game():
	if check_participants():
		get_tree().change_scene("res://GameScene.tscn")
	else:
		get_node("AcceptDialog").popup()

func exit_game():
	get_tree().quit()
	
func set_things():
	get_node("VBoxContainer").set_visible(0)
	get_node("VBoxContainer2").set_visible(1)
	get_node("Label").set_visible(1)
	get_node("buttons").set_visible(1)
	
func back():
	get_node("VBoxContainer").set_visible(1)
	get_node("VBoxContainer2").set_visible(0)
	get_node("Label").set_visible(0)
	get_node("buttons").set_visible(0)
	
func plus():
	if laps != 9:
		laps += 1
		global.add_lap()

func minus():
	if laps != 1:
		laps -= 1
		global.remove_lap()
		
func show_credits():
	get_node("VBoxContainer").set_visible(0)
	get_node("creators").set_visible(1)
	
func back2():
	get_node("creators").set_visible(0)
	get_node("VBoxContainer").set_visible(1)
	
func show_rules():
	get_node("AcceptDialog2").popup()

