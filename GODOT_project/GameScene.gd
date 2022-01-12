extends Spatial

var DONE = 1

var map = [	[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4,0,0,0,0,0,0,0,0],
			[0,2,1,1,1,1,1,1,4,0,0,0,0,0,0,0,2,0,1,1,1,1,7,1,1,0,0,0,0,0,0,0,0],
			[0,0,0,0,1,0,0,0,0,0,0,0,4,0,0,0,1,0,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0],
			[0,0,0,0,1,1,1,1,0,0,0,0,1,1,1,1,1,1,1,0,0,0,0,0,1,1,1,1,2,0,0,0,0],
			[0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0],
			[0,0,1,1,1,1,0,1,0,0,0,0,5,0,0,0,1,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,0],
			[0,0,5,0,0,1,0,1,0,0,0,0,1,0,0,0,1,1,1,1,1,0,0,0,0,1,1,1,1,1,0,1,0],
			[0,0,0,0,0,1,1,1,1,1,1,1,1,0,0,0,0,0,0,0,1,0,0,0,1,0,0,0,1,1,1,1,0],
			[0,0,0,0,0,0,0,0,1,0,0,0,1,0,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,5,0,0],
			[0,0,0,0,0,0,0,0,1,0,0,0,1,0,1,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0],
			[0,0,0,0,0,0,1,1,1,0,0,0,1,1,1,0,1,1,1,0,0,0,0,6,0,0,0,0,0,0,0,0,0],
			[0,0,4,1,0,0,1,0,0,0,0,0,0,0,0,0,1,0,5,0,0,0,0,1,0,0,0,0,0,0,0,0,0],
			[0,0,0,1,0,0,1,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,4,0,0,0,0],
			[0,0,0,1,1,1,1,1,1,0,0,0,5,0,0,0,3,0,0,0,0,0,0,1,0,0,1,1,1,0,0,0,0],
			[0,0,0,1,0,0,0,0,1,0,0,0,1,0,0,0,0,0,0,0,0,0,0,1,0,0,5,0,1,0,0,0,0],
			[0,2,1,1,0,0,0,0,1,1,1,1,1,1,3,0,0,0,3,1,1,1,1,1,1,0,0,0,1,1,1,1,2],
			[0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,1,0,0],
			[0,0,0,0,0,0,1,1,1,1,1,1,1,0,0,0,3,0,0,0,0,0,0,0,1,0,0,0,0,0,1,0,0],
			[0,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,1,0,0,0,0,0,0,0,1,1,1,1,1,1,1,0,0],
			[0,0,0,0,0,0,1,1,1,1,0,0,0,1,1,1,1,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0],
			[0,0,0,0,0,0,1,0,0,5,0,0,0,1,0,0,1,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0],
			[0,0,0,0,1,1,1,0,0,0,0,0,0,5,0,0,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0],
			[0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0],
			[0,0,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,1,1,1,0,0,0,0,0],
			[0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,1,0,1,1,0,0,0,0],
			[0,0,1,0,0,0,0,5,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,5,1,0,0,1,0,0,0,0],
			[0,0,1,0,1,1,1,1,0,0,0,0,0,0,0,1,1,1,1,1,0,0,0,0,0,0,0,0,1,0,0,0,0],
			[0,0,1,1,1,0,1,1,1,1,1,6,1,1,0,1,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0],
			[0,0,1,0,0,0,1,0,0,0,0,0,0,1,0,1,0,0,0,0,0,0,0,0,0,0,0,0,1,1,4,0,0],
			[2,1,1,0,0,0,1,0,0,0,0,0,0,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0],
			[0,0,1,1,1,1,1,4,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,5,0,0,0,0,1,0,0,0,0],
			[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2,0,0,0,0,0,0,0,0,0,0,1,1,2,0,0]  ]
			
class Sector:
	var exist = 1
	
	var sec_coordx
	var sec_coordy
	var sec_coordz
	
	var north = 0
	var south = 0
	var west = 0
	var east = 0
	
	var start = 0
	var tree = 0
	var s_bonus = 0
	var b_bonus = 0
	var wait  = 0
	var hide = 0
	
	func _init(exist):
		self.exist = exist
		
	func set_coord(sec_coordx,sec_coordy,sec_coordz):
		self.sec_coordx = sec_coordx
		self.sec_coordy = sec_coordy
		self.sec_coordz = sec_coordz
		
	func get_vector():
		return Vector3(self.sec_coordx, self.sec_coordy, self.sec_coordz)
		
	func set_path(north,south,west,east):
		self.north = north
		self.south = south
		self.west = west
		self.east = east
		
	func set_start(start):
		self.start = start
		
	func print_coord():
		print(sec_coordx)
		print(sec_coordy)
		print(sec_coordz)
		
	func print_neighbours():
		if north == 1 :
			print("north")
		if south == 1 :
			print("south")
		if west == 1 :
			print("west")
		if east == 1 :
			print("east")
			
	func get_random_neighbour():
		var neighbours = []
		
		if self.north == 1 : neighbours.append("n")
		if self.south == 1 : neighbours.append("s")
		if self.west == 1 : neighbours.append("w")
		if self.east == 1 : neighbours.append("e")
		
		var temp_rand = randi()%neighbours.size()
		
		return neighbours[temp_rand]
			
		
var key_coordx = 32.009
var key_coordy = 0 #3.197
var key_coordz = 30

var j = 0
var odds = 0

var dice = 0
var sector_map = []
var physical_map = []

var test = 1
var test_pos = 32.009

var spawn = []

var spawn_human = global.human
var spawn_undead = global.undead
var spawn_elf = global.elf
var spawn_outsider = global.outsider

var max_players = []
var player_number = 0

var current_player

var n_activate = 0
var s_activate = 0
var w_activate = 0 
var e_activate = 0

var option_a = 0
var option_b = 0
var option_c = 0
var option_d = 0

var fighters = []

var lap = global.lap_end

var once = 1

func _ready():
	
	randomize()
	
	get_node("Interface/HBoxContainer/GridContainer/Button").connect("pressed",self,"roll")
	
	get_node("Interface/HBoxContainer2/GridContainer/NORTH").connect("pressed",self,"north_button")
	get_node("Interface/HBoxContainer2/GridContainer/NORTH").set_button_icon(preload("res://Direction_Icons/slab.png"))
	get_node("Interface/HBoxContainer2/GridContainer/NORTH").set_disabled(1)
	get_node("Interface/HBoxContainer2/GridContainer/SOUTH").connect("pressed",self,"south_button")
	get_node("Interface/HBoxContainer2/GridContainer/SOUTH").set_button_icon(preload("res://Direction_Icons/slab.png"))
	get_node("Interface/HBoxContainer2/GridContainer/SOUTH").set_disabled(1)
	get_node("Interface/HBoxContainer2/GridContainer/WEST").connect("pressed",self,"west_button")
	get_node("Interface/HBoxContainer2/GridContainer/WEST").set_button_icon(preload("res://Direction_Icons/slab.png"))
	get_node("Interface/HBoxContainer2/GridContainer/WEST").set_disabled(1)
	get_node("Interface/HBoxContainer2/GridContainer/EAST").connect("pressed",self,"east_button")
	get_node("Interface/HBoxContainer2/GridContainer/EAST").set_button_icon(preload("res://Direction_Icons/slab.png"))
	get_node("Interface/HBoxContainer2/GridContainer/EAST").set_disabled(1)
	
	get_node("Interface/exit").connect("pressed",self,"quiting")
	get_node("Interface/VBoxContainer/HBoxContainer/quest").connect("pressed",self,"show_objectives")
	
	get_node("Interface/Ascend_Information/HBoxContainer2/A").connect("pressed",self,"asc_a")
	get_node("Interface/Ascend_Information/HBoxContainer2/B").connect("pressed",self,"asc_b")
	get_node("Interface/Ascend_Information/HBoxContainer2/C").connect("pressed",self,"asc_c")
	get_node("Interface/Ascend_Information/HBoxContainer2/D").connect("pressed",self,"asc_d")
	
	get_node("Interface/Fight/HBoxContainer2/attack").connect("pressed",self,"players_fight")
	
	# FIRST PLAYER + INITIATIVE
	if spawn_outsider == 1 :
		spawn.append(get_node("Outsider_Player/KinematicBody"))
		get_node("Outsider_Player").set_visible(1)
	if spawn_human == 1 :
		spawn.append(get_node("Human_Player/KinematicBody"))
		get_node("Human_Player").set_visible(1)
	if spawn_undead == 1 :
		spawn.append(get_node("Undead_Player/KinematicBody"))
		get_node("Undead_Player").set_visible(1)
	if spawn_elf == 1 :
		spawn.append(get_node("Elf_Player/KinematicBody"))
		get_node("Elf_Player").set_visible(1)
		
	current_player = spawn[0]
	current_player.get_node("Camera_Holder/Camera").set_current(1)
	get_node("Interface/HBoxContainer3/GridContainer/Banner").set_button_icon(current_player.race)
	get_node("Interface/VBoxContainer/NinePatchRect/Label").text = str(current_player.exp_points)
	get_node("Interface/VBoxContainer/NinePatchRect2/Label").text = str(current_player.attack)
	get_node("Interface/VBoxContainer/NinePatchRect3/Label").text = str(current_player.defense)
		
	pass
	
func north_button():
	n_activate = 1
	pass
func south_button():
	s_activate = 1
	pass
func west_button():
	w_activate = 1
	pass
func east_button():
	e_activate = 1
	pass
	
func asc_a():
	option_a = 1
	pass
func asc_b():
	option_b = 1
	pass
func asc_c():
	option_c = 1
	pass
func asc_d():
	option_d = 1
	pass
	
func quiting():
	get_node("Interface/ConfirmationDialog").popup()
	
func show_objectives():
	get_node("Interface/objectives").dialog_text = current_player.read_objective()[0] + " and " + current_player.read_objective()[1] + ". Completed: " + str(current_player.laps_ended)
	get_node("Interface/objectives").popup()
	
func players_fight():
	var roll_fight = randi()%5 + 1
	
	if roll_fight == 1 :
		get_node("Interface/Fight/HBoxContainer2/attack").set_button_icon(preload("res://Dice_res/1.png"))
	if roll_fight == 2 :
		get_node("Interface/Fight/HBoxContainer2/attack").set_button_icon(preload("res://Dice_res/2.png"))
	if roll_fight == 3 :
		get_node("Interface/Fight/HBoxContainer2/attack").set_button_icon(preload("res://Dice_res/3.png"))
	if roll_fight == 4 :
		get_node("Interface/Fight/HBoxContainer2/attack").set_button_icon(preload("res://Dice_res/4.png"))
	if roll_fight == 5 :
		get_node("Interface/Fight/HBoxContainer2/attack").set_button_icon(preload("res://Dice_res/5.png"))
	
	if fighters.empty():
		fighters.append(roll_fight + current_player.attack)
		get_node("Interface/Fight/HBoxContainer/Banner").set_button_icon(preload("res://Fight/defense_rolll.png"))
	else:
		fighters.append(roll_fight + current_player.enemy.defense)
	if fighters.size() == 2 :
		get_node("Interface/Fight/HBoxContainer/Banner").set_button_icon(preload("res://Fight/attack_roll.png"))
		

func player_queue_ver_beta():
	print(player_number)
	player_number = player_number + 1
	if max_players.size() == 1 :
		current_player = max_players[0]
	else:
		current_player = max_players[player_number]
	get_node("Interface/HBoxContainer3/GridContainer/Banner").set_button_icon(current_player.race)
	get_node("Interface/VBoxContainer/NinePatchRect/Label").text = str(current_player.exp_points)
	get_node("Interface/VBoxContainer/NinePatchRect2/Label").text = str(current_player.attack)
	get_node("Interface/VBoxContainer/NinePatchRect3/Label").text = str(current_player.defense)
	current_player.get_node("Camera_Holder/Camera").set_current(1)
	if player_number == max_players.size()-1:
		player_number = -1
	
func _process(delta):
	var coordx = key_coordx
	var coordz = key_coordz
	
	while j != 32 :
		var line = []
		var physical_line = []
		var i = 0
		while i != 33 :
			if map[j][i] != 0 :
				var sector = preload("res://Sektor.tscn").instance()
				get_parent().add_child(sector)
				sector.set_translation(Vector3(coordx,key_coordy,coordz))
				physical_line.append(sector)
				
				if map[j][i] == 3 or map[j][i] == 4 or map[j][i] == 5 :
					sector.get_node("Particles").set_visible(1)
				
				var template = Sector.new(1)
				template.set_coord(coordx,key_coordy,coordz)
				
				if map[j][i] == 2 :
					template.start = 1
				if map[j][i] == 3 :
					template.tree = 1
				if map[j][i] == 4 :
					template.s_bonus = 1
				if map[j][i] == 5 :
					template.b_bonus = 1
				if map[j][i] == 6 :
					template.wait = 1
				if map[j][i] == 7 :
					template.hide = 1
				line.append(template)
			else:
				line.append(Sector.new(0))
				physical_line.append(0)
			coordx = coordx - 2
			i = i + 1
		sector_map.append(line)
		physical_map.append(physical_line)
		coordx = key_coordx
		coordz = coordz - 2
		j = j + 1
		
	#if Input.is_action_pressed("camera_1"):get_node("Camera1").set_current(1)
	if Input.is_action_pressed("up_view"):
		get_node("Camera_Holder").rotation.y = 0
		get_node("Camera_Holder/Camera_up").set_current(1)
	#if Input.is_action_pressed("camera_3"):get_node("Camera3").set_current(1)
	#if Input.is_action_pressed("camera_4"):get_node("Camera4").set_current(1)
	if Input.is_action_pressed("player_view"):
		current_player.get_node("Camera_Holder/Camera").set_current(1)
		#get_node("Human_Player/KinematicBody/Camera").set_current(1)
		
	if Input.is_action_pressed("ui_left"): 
		get_node("Camera_Holder").rotation.y += 0.01
	if Input.is_action_pressed("ui_right"): 
		get_node("Camera_Holder").rotation.y -= 0.01
		
	if current_player.exp_points > 99 and current_player.asc == 0 :
		
		var first_ascend = 1
		while first_ascend == 1 :
			
			option_a = 0
			option_b = 0
			option_c = 0
			option_d = 0
			
			if current_player.who == "I am a Human" :
				get_node("Interface/Ascend_Information/HBoxContainer2/A").set_button_icon(preload("res://Asc/human/knight.png"))
				get_node("Interface/Ascend_Information/HBoxContainer2/B").set_button_icon(preload("res://Asc/human/archer.png"))
				get_node("Interface/Ascend_Information/HBoxContainer2/C").set_button_icon(preload("res://Asc/human/mage.png"))
				get_node("Interface/Ascend_Information/HBoxContainer2/D").set_button_icon(preload("res://Asc/human/innkeeper.png"))
				
				get_node("Interface/Ascend_Information").set_visible(1)
				
				var decision = Timer.new()
				decision.set_wait_time(1)
				decision.set_one_shot(true)
				self.add_child(decision)
				decision.start()
				yield(decision, "timeout")
				decision.queue_free()
				
				if option_a == 1:
					current_player.ascend_1(current_player.get_node("KNIGHT"))
					if once == 1: 
						current_player.defense += 4
						once = 0
					get_node("Interface/Ascend_Information").set_visible(0)
					first_ascend = 0
				if option_b == 1:
					current_player.ascend_1(current_player.get_node("MERCENARY"))
					if once == 1: 
						current_player.attack += 2
						current_player.defense += 1
						once = 0
					get_node("Interface/Ascend_Information").set_visible(0)
					first_ascend = 0
				if option_c == 1:
					current_player.ascend_1(current_player.get_node("ADEPT"))
					if once == 1: 
						current_player.attack += 4
						once = 0
					current_player.asc_sickness = 1
					get_node("Interface/Ascend_Information").set_visible(0)
					first_ascend = 0
				if option_d == 1:
					current_player.ascend_1(current_player.get_node("INNKEEPER"))
					if once == 1: 
						current_player.attack += 1
						current_player.defense += 2
						once = 0
					get_node("Interface/Ascend_Information").set_visible(0)
					first_ascend = 0
			if current_player.who == "I am an Undead" :
				get_node("Interface/Ascend_Information/HBoxContainer2/A").set_button_icon(preload("res://Asc/undead/warrior.png"))
				get_node("Interface/Ascend_Information/HBoxContainer2/B").set_button_icon(preload("res://Asc/undead/archer.png"))
				get_node("Interface/Ascend_Information/HBoxContainer2/C").set_button_icon(preload("res://Asc/undead/mage.png"))
				get_node("Interface/Ascend_Information/HBoxContainer2/D").set_button_icon(preload("res://Asc/undead/human.png"))
				
				get_node("Interface/Ascend_Information").set_visible(1)
				
				var decision = Timer.new()
				decision.set_wait_time(1)
				decision.set_one_shot(true)
				self.add_child(decision)
				decision.start()
				yield(decision, "timeout")
				decision.queue_free()
				
				if option_a == 1:
					current_player.ascend_1(current_player.get_node("SKELETONWARRIOR"))
					if once == 1: 
						current_player.defense += 4
						once = 0
					get_node("Interface/Ascend_Information").set_visible(0)
					first_ascend = 0
				if option_b == 1:
					current_player.ascend_1(current_player.get_node("SKELETONARCHER"))
					if once == 1: 
						current_player.attack += 2
						current_player.defense += 1
						once = 0
					get_node("Interface/Ascend_Information").set_visible(0)
					first_ascend = 0
				if option_c == 1:
					current_player.ascend_1(current_player.get_node("MAGE"))
					if once == 1: 
						current_player.attack += 4
						once = 0
					get_node("Interface/Ascend_Information").set_visible(0)
					first_ascend = 0
				if option_d == 1:
					current_player.ascend_1(current_player.get_node("ZOMBIE"))
					if once == 1: 
						current_player.defense += 3
						once = 0
					current_player.asc_sickness = 1
					get_node("Interface/Ascend_Information").set_visible(0)
					first_ascend = 0
			if current_player.who == "I am an Elf" :
				get_node("Interface/Ascend_Information/HBoxContainer2/A").set_button_icon(preload("res://Asc/elf/earth.png"))
				get_node("Interface/Ascend_Information/HBoxContainer2/B").set_button_icon(preload("res://Asc/elf/fire.png"))
				get_node("Interface/Ascend_Information/HBoxContainer2/C").set_button_icon(preload("res://Asc/elf/water.png"))
				get_node("Interface/Ascend_Information/HBoxContainer2/D").set_button_icon(preload("res://Asc/elf/divine.png"))
				
				get_node("Interface/Ascend_Information").set_visible(1)
				
				var decision = Timer.new()
				decision.set_wait_time(1)
				decision.set_one_shot(true)
				self.add_child(decision)
				decision.start()
				yield(decision, "timeout")
				decision.queue_free()
				
				if option_a == 1:
					current_player.ascend_1(current_player.get_node("DRYAD"))
					if once == 1: 
						current_player.attack += 1
						current_player.defense += 3
						once = 0
					get_node("Interface/Ascend_Information").set_visible(0)
					first_ascend = 0
				if option_b == 1:
					current_player.ascend_1(current_player.get_node("GLIMMER"))
					if once == 1: 
						current_player.attack += 4
						once = 0
					get_node("Interface/Ascend_Information").set_visible(0)
					first_ascend = 0
				if option_c == 1:
					current_player.ascend_1(current_player.get_node("NYMPH"))
					if once == 1: 
						current_player.attack += 2
						current_player.defense += 1
						once = 0
					get_node("Interface/Ascend_Information").set_visible(0)
					first_ascend = 0
				if option_d == 1:
					current_player.ascend_1(current_player.get_node("FAE"))
					if once == 1: 
						current_player.defense += 4
						once = 0
					current_player.asc_sickness = 1
					get_node("Interface/Ascend_Information").set_visible(0)
					first_ascend = 0
			if current_player.who == "I am an Outsider" :
				get_node("Interface/Ascend_Information/HBoxContainer2/A").set_button_icon(preload("res://Asc/outsider/attack.png"))
				get_node("Interface/Ascend_Information/HBoxContainer2/B").set_button_icon(preload("res://Asc/outsider/scout.png"))
				get_node("Interface/Ascend_Information/HBoxContainer2/C").set_button_icon(preload("res://Asc/outsider/collect.png"))
				get_node("Interface/Ascend_Information/HBoxContainer2/D").set_button_icon(preload("res://Asc/outsider/consume.png"))
				
				get_node("Interface/Ascend_Information").set_visible(1)
				
				var decision = Timer.new()
				decision.set_wait_time(1)
				decision.set_one_shot(true)
				self.add_child(decision)
				decision.start()
				yield(decision, "timeout")
				decision.queue_free()
				
				if option_a == 1:
					current_player.ascend_1(current_player.get_node("BATTLEUNIT"))
					if once == 1: 
						current_player.attack += 4
						once = 0
					get_node("Interface/Ascend_Information").set_visible(0)
					first_ascend = 0
				if option_b == 1:
					current_player.ascend_1(current_player.get_node("SCOUT"))
					if once == 1: 
						current_player.attack += 1
						current_player.defense += 2
						once = 0
					get_node("Interface/Ascend_Information").set_visible(0)
					first_ascend = 0
				if option_c == 1:
					current_player.ascend_1(current_player.get_node("COLLECTOR"))
					if once == 1: 
						current_player.defense += 3
						once = 0
					get_node("Interface/Ascend_Information").set_visible(0)
					first_ascend = 0
				if option_d == 1:
					current_player.ascend_1(current_player.get_node("EATER"))
					if once == 1: 
						current_player.attack += 2
						current_player.defense += 2
						once = 0
					current_player.asc_sickness = 1
					get_node("Interface/Ascend_Information").set_visible(0)
					first_ascend = 0
		get_node("Interface/VBoxContainer/NinePatchRect2/Label").text = str(current_player.attack)
		get_node("Interface/VBoxContainer/NinePatchRect3/Label").text = str(current_player.defense)
		if once == 0:
			var delay1 = Timer.new()
			delay1.set_wait_time(1)
			delay1.set_one_shot(true)
			self.add_child(delay1)
			delay1.start()
			yield(delay1, "timeout")
			delay1.queue_free()
			once = 1
		
	if current_player.exp_points > 299 and current_player.asc_sickness == 1 :
		var sick_rand = randi()%100 + 1
		
		if sick_rand < 20 :
			current_player.sickness()
			get_node("Interface/VBoxContainer/NinePatchRect2/Label").text = str(current_player.attack)
			get_node("Interface/VBoxContainer/NinePatchRect3/Label").text = str(current_player.defense)
			get_node("Interface/AcceptDialog").dialog_text = current_player.dial + " path has been corrupted!"
			get_node("Interface/AcceptDialog").popup()
			current_player.asc_sickness = 0
		else:
			current_player.asc_sickness = 0
			
	if current_player.exp_points > 400 and current_player.asc == 1 :
		current_player.ascend_2()
		get_node("Interface/VBoxContainer/NinePatchRect2/Label").text = str(current_player.attack)
		get_node("Interface/VBoxContainer/NinePatchRect3/Label").text = str(current_player.defense)
		get_node("Interface/AcceptDialog").dialog_text = current_player.dial + " has mastered his path!"
		get_node("Interface/AcceptDialog").popup()
		
	if current_player.laps_ended == lap :
		get_node("Interface/AcceptDialog").dialog_text = current_player.dial + " has won the game!"
		get_node("Interface/AcceptDialog").popup()
		
		var victory = Timer.new()
		victory.set_wait_time(10)
		victory.set_one_shot(true)
		self.add_child(victory)
		victory.start()
		yield(victory, "timeout")
		victory.queue_free()
		
		get_tree().change_scene("res://MainMenu.tscn")
		
	#////// TEST COORD
	"""
	while test == 1 :
		var a = 0
		while a != 32 :
			var b = 0
			while b != 33 :
				if map[a][b] != 0 :
					sector_map[a][b].print_coord()
				b = b + 1
			a = a + 1
		test = 0
	"""
	
	#////// NEIGHBOUR MAPPING
	while DONE == 1 :
		var a = 0
		while a != 32 :
			var b = 0
			while b != 33 :
				
				# NO REASON FOR ONLY 2
				#if (a != 0 and b != 0) and (a != 0 and b != 32) and (a != 31 and b != 0) and (a != 31 and b != 32) :
				
				# NORTHEND
				if map[a][b] != 0 and a == 0 and b != 0 and b != 32:
					if map[a+1][b] != 0 :
						sector_map[a][b].south = 1
					if map[a][b-1] != 0 :
						sector_map[a][b].west = 1
					if map[a][b+1] != 0 :
						sector_map[a][b].east = 1
							
				# SOUTHEND
				elif map[a][b] != 0 and a == 31 and b != 0 and b != 32:
					if map[a-1][b] != 0 :
						sector_map[a][b].north = 1
					if map[a][b-1] != 0 :
						sector_map[a][b].west = 1
					if map[a][b+1] != 0 :
						sector_map[a][b].east = 1
							
				# WESTEND
				elif map[a][b] != 0 and b == 0 and a != 0 and a != 31:
					if map[a-1][b] != 0 :
						sector_map[a][b].north = 1
					if map[a+1][b] != 0 :
						sector_map[a][b].south = 1
					if map[a][b+1] != 0 :
						sector_map[a][b].east = 1
						
				# EASTEND
				elif map[a][b] != 0 and b == 32 and a != 0 and a != 31:
					if map[a-1][b] != 0 :
						sector_map[a][b].north = 1
					if map[a+1][b] != 0 :
						sector_map[a][b].south = 1
					if map[a][b-1] != 0 :
						sector_map[a][b].west = 1
							
					# ///////// ALL OPTIONS
				elif map[a][b] != 0 and a != 0 and b != 0 and a != 31 and b != 32:
					if map[a-1][b] != 0 :
						sector_map[a][b].north = 1
					if map[a+1][b] != 0 :
						sector_map[a][b].south = 1
					if map[a][b-1] != 0 :
						sector_map[a][b].west = 1
					if map[a][b+1] != 0 :
						sector_map[a][b].east = 1
						
				b = b + 1
			a = a + 1
		DONE = 0
		
	# //////// TEST NEIGHBOUR
	"""
	while test == 1 :
		sector_map[31][28].print_neighbours()
		test = 0
	"""
		# ////////////// MAPOWANIE NIEROWNOSCI	
	while odds == 0 :
		
		# SOUTHERN BRIDGE
		sector_map[21][21].sec_coordy = 0.5
		sector_map[21][22].sec_coordy = 0.6
		sector_map[21][23].sec_coordy = 0.5
		
		# NORTHERN BRIDGE
		sector_map[15][22].sec_coordy = 0.15
		sector_map[15][21].sec_coordy = 0.3
		sector_map[15][20].sec_coordy = 0.3
		sector_map[15][19].sec_coordy = 0.3
		
		# MOUNTAIN PASS
		sector_map[20][6].sec_coordy = 0.25
		sector_map[21][6].sec_coordy = 0.4
		sector_map[21][5].sec_coordy = 0.55
		sector_map[21][4].sec_coordy = 0.7
		sector_map[22][4].sec_coordy = 0.95
		sector_map[23][4].sec_coordy = 1.1
		sector_map[23][3].sec_coordy = 1.3
		sector_map[23][2].sec_coordy = 1.45
		sector_map[24][2].sec_coordy = 1.7
		var a = 1
		while a != 7 :
			var b = 1
			while b != 11 :
				sector_map[24+a][0+b].sec_coordy = 1.85
				b = b + 1
			a = a + 1
		sector_map[29][0].sec_coordy = 2
		sector_map[27][3].sec_coordy = 1.7
		sector_map[27][4].sec_coordy = 1.4
		sector_map[26][4].sec_coordy = 1.4
		sector_map[26][5].sec_coordy = 1.25
		sector_map[26][6].sec_coordy = 1
		sector_map[26][7].sec_coordy = 0.7
		sector_map[25][7].sec_coordy = 0.6
		
		# DEMAPPING
		
		# MOUNTAINS
		sector_map[26][6].south = 0
		sector_map[27][6].north = 0
		sector_map[26][7].south = 0
		sector_map[27][7].north = 0
		
		# CASTLE
		sector_map[5][27].south = 0
		sector_map[6][27].north = 0
		sector_map[5][28].south = 0
		sector_map[6][28].north = 0
		sector_map[7][29].east = 0
		sector_map[7][30].west = 0
		sector_map[6][28].east = 0
		sector_map[6][29].west = 0
		
		# DIAGONAL
		
		# CASTLE GATE
		sector_map[7][24].east = 1
		sector_map[6][25].west = 1
		
		# WILD BRIDGE
		sector_map[17][12].east = 1
		sector_map[18][13].west = 1
		
		odds = 1
	
	# SPAWN START
	while spawn_outsider == 1:
		var spawn_outsider_1 = sector_map[1][1]
		get_node("Outsider_Player/KinematicBody").sector_start_a = spawn_outsider_1
		var spawn_outsider_2 = sector_map[31][17]
		get_node("Outsider_Player/KinematicBody").sector_start_b = spawn_outsider_2
		
		var rand = randi()%2
		if rand == 0 :
			get_node("Outsider_Player").set_translation(Vector3(sector_map[1][1].sec_coordx,
															 sector_map[1][1].sec_coordy,
															 sector_map[1][1].sec_coordz))
			get_node("Outsider_Player/KinematicBody").set_pos(1,1)
			get_node("Outsider_Player/KinematicBody").set_rotation_degrees(Vector3(0,180,0))
			get_node("Outsider_Player/KinematicBody").set_sector_end(Vector2(15,32),Vector2(31,17))
			get_node("Outsider_Player/KinematicBody").sector_start = "a"
		elif rand == 1:
			get_node("Outsider_Player").set_translation(Vector3(sector_map[31][17].sec_coordx,
															 sector_map[31][17].sec_coordy,
															 sector_map[31][17].sec_coordz))
			get_node("Outsider_Player/KinematicBody").set_pos(31,17)
			get_node("Outsider_Player/KinematicBody").set_rotation_degrees(Vector3(0,270,0))
			get_node("Outsider_Player/KinematicBody").set_sector_end(Vector2(1,1),Vector2(3,28))
			get_node("Outsider_Player/KinematicBody").sector_start = "b"
		max_players.append(get_node("Outsider_Player/KinematicBody"))
		spawn_outsider = 0
		
	while spawn_human == 1:
		var spawn_human_1 = sector_map[3][28]
		get_node("Human_Player/KinematicBody").sector_start_a = spawn_human_1
		var spawn_human_2 = sector_map[31][30]
		get_node("Human_Player/KinematicBody").sector_start_b = spawn_human_2
		
		var rand = randi()%2
		if rand == 0 :
			get_node("Human_Player").set_translation(Vector3(sector_map[3][28].sec_coordx,
															 sector_map[3][28].sec_coordy,
															 sector_map[3][28].sec_coordz))
			get_node("Human_Player/KinematicBody").set_pos(3,28)
			get_node("Human_Player/KinematicBody").set_sector_end(Vector2(15,1),Vector2(31,17))
			get_node("Human_Player/KinematicBody").sector_start = "a"
		elif rand == 1:
			get_node("Human_Player").set_translation(Vector3(sector_map[31][30].sec_coordx,
															 sector_map[31][30].sec_coordy,
															 sector_map[31][30].sec_coordz))
			get_node("Human_Player/KinematicBody").set_pos(31,30)
			get_node("Human_Player/KinematicBody").set_sector_end(Vector2(1,16),Vector2(15,1))
			get_node("Human_Player/KinematicBody").sector_start = "b"
		max_players.append(get_node("Human_Player/KinematicBody"))
		spawn_human = 0
	
	while spawn_undead == 1:
		var spawn_undead_1 = sector_map[15][1]
		get_node("Undead_Player/KinematicBody").sector_start_a = spawn_undead_1
		var spawn_undead_2 = sector_map[1][16]
		get_node("Undead_Player/KinematicBody").sector_start_b = spawn_undead_2
		
		var rand = randi()%2
		if rand == 0 :
			get_node("Undead_Player").set_translation(Vector3(sector_map[15][1].sec_coordx,
															 sector_map[15][1].sec_coordy,
															 sector_map[15][1].sec_coordz))
			get_node("Undead_Player/KinematicBody").set_pos(15,1)
			get_node("Undead_Player/KinematicBody").set_rotation_degrees(Vector3(0,180,0))
			get_node("Undead_Player/KinematicBody").set_sector_end(Vector2(3,28),Vector2(31,30))
			get_node("Undead_Player/KinematicBody").sector_start = "a"
		elif rand == 1:
			get_node("Undead_Player").set_translation(Vector3(sector_map[1][16].sec_coordx,
															 sector_map[1][16].sec_coordy,
															 sector_map[1][16].sec_coordz))
			get_node("Undead_Player/KinematicBody").set_pos(1,16)
			get_node("Undead_Player/KinematicBody").set_rotation_degrees(Vector3(0,90,0))
			get_node("Undead_Player/KinematicBody").set_sector_end(Vector2(29,0),Vector2(31,30))
			get_node("Undead_Player/KinematicBody").sector_start = "b"
		max_players.append(get_node("Undead_Player/KinematicBody"))
		spawn_undead = 0
		
	while spawn_elf == 1:
		var spawn_elf_1 = sector_map[29][0]
		get_node("Elf_Player/KinematicBody").sector_start_a = spawn_elf_1
		var spawn_elf_2 = sector_map[15][32]
		get_node("Elf_Player/KinematicBody").sector_start_b = spawn_elf_2
		
		var rand = randi()%2
		if rand == 0 :
			get_node("Elf_Player").set_translation(Vector3(sector_map[29][0].sec_coordx,
															 sector_map[29][0].sec_coordy,
															 sector_map[29][0].sec_coordz))
			get_node("Elf_Player/KinematicBody").set_pos(29,0)
			get_node("Elf_Player/KinematicBody").set_rotation_degrees(Vector3(0,180,0))
			get_node("Elf_Player/KinematicBody").set_sector_end(Vector2(15,32),Vector2(1,16))
			get_node("Elf_Player/KinematicBody").sector_start = "a"
		elif rand == 1:
			get_node("Elf_Player").set_translation(Vector3(sector_map[15][32].sec_coordx,
															 sector_map[15][32].sec_coordy,
															 sector_map[15][32].sec_coordz))
			get_node("Elf_Player/KinematicBody").set_pos(15,32)
			get_node("Elf_Player/KinematicBody").set_sector_end(Vector2(29,0),Vector2(1,1))
			get_node("Elf_Player/KinematicBody").sector_start = "b"
		max_players.append(get_node("Elf_Player/KinematicBody"))
		spawn_elf = 0
		
	#MOVEMENT TEST
	"""
	while test == 1 :
		get_node("Human_Player/KinematicBody").square_movement(
		Vector3(sector_map[30][28].sec_coordx,sector_map[30][28].sec_coordy,sector_map[30][28].sec_coordz),
		Vector3(sector_map[31][30].sec_coordx,sector_map[31][30].sec_coordy,sector_map[31][30].sec_coordz))
		test = test - 1
	"""
	
	#ASC TEST
	"""
	if Input.is_action_pressed("ui_up") :
		get_node("Human_Player/KinematicBody/SOLDIER").set_visible(0)
		get_node("Human_Player/KinematicBody/GUARDIAN").set_visible(1)
	"""
	
	pass 
	
func roll():
	
	get_node("Interface/HBoxContainer/GridContainer/Button").set_disabled(1)
	
	var result = randi()%5 + 1
	
	if result == 1 :
		get_node("Interface/HBoxContainer/GridContainer/Button").set_button_icon(preload("res://Dice/1.png"))
		dice = result
	if result == 2 :
		get_node("Interface/HBoxContainer/GridContainer/Button").set_button_icon(preload("res://Dice/2.png"))
		dice = result
	if result == 3 :
		get_node("Interface/HBoxContainer/GridContainer/Button").set_button_icon(preload("res://Dice/3.png"))
		dice = result
	if result == 4 :
		get_node("Interface/HBoxContainer/GridContainer/Button").set_button_icon(preload("res://Dice/4.png"))
		dice = result
	if result == 5 :
		get_node("Interface/HBoxContainer/GridContainer/Button").set_button_icon(preload("res://Dice/5.png"))
		dice = result
		
	var path = ["empty"]
	
	var squares = dice
	while squares != 0 :
		
		n_activate = 0
		s_activate = 0
		w_activate = 0 
		e_activate = 0
		
		var temp_coorda = current_player.sector_a
		var temp_coordb = current_player.sector_b
		#print(sector_map[temp_coorda][temp_coordb].print_coord())
		"""
		var movement_delay = Timer.new()
		movement_delay.set_wait_time(1)
		movement_delay.set_one_shot(true)
		self.add_child(movement_delay)
		movement_delay.start()
		yield(movement_delay, "timeout")
		movement_delay.queue_free()
		"""
		var n_move = 0
		var s_move = 0
		var w_move = 0
		var e_move = 0
		
		var count = 0
		
		if sector_map[temp_coorda][temp_coordb].north == 1 and path[0] != "n":
			n_move = 1
			count = count + 1
		
		if sector_map[temp_coorda][temp_coordb].south == 1 and path[0] != "s":
			s_move = 1
			count = count + 1
			
		if sector_map[temp_coorda][temp_coordb].west == 1 and path[0] != "w":
			w_move = 1
			count = count + 1
			
		if sector_map[temp_coorda][temp_coordb].east == 1 and path[0] != "e":
			e_move = 1
			count = count + 1
			
		if count > 1 :
			#var random_dir = sector_map[temp_coorda][temp_coordb].get_random_neighbour()	
			if n_move == 1:
				get_node("Interface/HBoxContainer2/GridContainer/NORTH").set_disabled(0)
				get_node("Interface/HBoxContainer2/GridContainer/NORTH").set_button_icon(preload("res://Direction_Icons/north.png"))
			if s_move == 1:
				get_node("Interface/HBoxContainer2/GridContainer/SOUTH").set_disabled(0)
				get_node("Interface/HBoxContainer2/GridContainer/SOUTH").set_button_icon(preload("res://Direction_Icons/south.png"))
			if w_move == 1:
				get_node("Interface/HBoxContainer2/GridContainer/WEST").set_disabled(0)
				get_node("Interface/HBoxContainer2/GridContainer/WEST").set_button_icon(preload("res://Direction_Icons/west.png"))
			if e_move == 1:
				get_node("Interface/HBoxContainer2/GridContainer/EAST").set_disabled(0)
				get_node("Interface/HBoxContainer2/GridContainer/EAST").set_button_icon(preload("res://Direction_Icons/east.png"))
			
			var slab_stoper = 1
			while slab_stoper == 1:
				var decision = Timer.new()
				decision.set_wait_time(1)
				decision.set_one_shot(true)
				self.add_child(decision)
				decision.start()
				yield(decision, "timeout")
				decision.queue_free()
				
				if n_activate == 1:
					if temp_coorda == 10 and temp_coordb == 23 :
						if current_player.fight != 1 :
							current_player.square_movement(sector_map[temp_coorda-2][temp_coordb].get_vector(),
															sector_map[temp_coorda][temp_coordb].get_vector())
							current_player.set_pos(temp_coorda-2,temp_coordb)
							current_player.set_rotation_degrees(Vector3(0,270,0))
							path.clear()
							path.append("s")
							if sector_map[current_player.sector_a][current_player.sector_b].wait == 1: squares = 1
						slab_stoper = 0
					else:
						if current_player.fight != 1 :
							current_player.square_movement(sector_map[temp_coorda-1][temp_coordb].get_vector(),
																				   sector_map[temp_coorda][temp_coordb].get_vector())
							current_player.set_pos(temp_coorda-1,temp_coordb)
							current_player.set_rotation_degrees(Vector3(0,270,0))
							path.clear()
							path.append("s")
							if sector_map[current_player.sector_a][current_player.sector_b].wait == 1: squares = 1
						slab_stoper = 0
	
				if s_activate == 1:
					if temp_coorda == 8 and temp_coordb == 23 :
						if current_player.fight != 1 :
							current_player.square_movement(sector_map[temp_coorda+2][temp_coordb].get_vector(),
															sector_map[temp_coorda][temp_coordb].get_vector())
							current_player.set_pos(temp_coorda+2,temp_coordb)
							current_player.set_rotation_degrees(Vector3(0,90,0))
							path.clear()
							path.append("n")
							if sector_map[current_player.sector_a][current_player.sector_b].wait == 1: squares = 1
						slab_stoper = 0
					else:
						if current_player.fight != 1 :
							current_player.square_movement(sector_map[temp_coorda+1][temp_coordb].get_vector(),
																				   sector_map[temp_coorda][temp_coordb].get_vector())
							current_player.set_pos(temp_coorda+1,temp_coordb)
							current_player.set_rotation_degrees(Vector3(0,90,0))
							path.clear()
							path.append("n")
							if sector_map[current_player.sector_a][current_player.sector_b].wait == 1: squares = 1
						slab_stoper = 0
	
				if w_activate == 1:
					if temp_coorda == 6 and temp_coordb == 25 :
						if current_player.fight != 1 :
							current_player.square_movement(sector_map[7][24].get_vector(),
																				   sector_map[temp_coorda][temp_coordb].get_vector())
							current_player.set_pos(7,24)
							current_player.set_rotation_degrees(Vector3(0,0,0))
							path.clear()
							path.append("e")
						slab_stoper = 0
					elif temp_coorda == 18 and temp_coordb == 13 :
						if current_player.fight != 1 :
							current_player.square_movement(sector_map[17][12].get_vector(),
																				   sector_map[temp_coorda][temp_coordb].get_vector())
							current_player.set_pos(17,12)
							current_player.set_rotation_degrees(Vector3(0,0,0))
							path.clear()
							path.append("e")
						slab_stoper = 0
					else:
						if current_player.fight != 1 :
							current_player.square_movement(sector_map[temp_coorda][temp_coordb-1].get_vector(),
																				   sector_map[temp_coorda][temp_coordb].get_vector())
							current_player.set_pos(temp_coorda,temp_coordb-1)
							current_player.set_rotation_degrees(Vector3(0,0,0))
							path.clear()
							path.append("e")
							if sector_map[current_player.sector_a][current_player.sector_b].wait == 1: squares = 1
						slab_stoper = 0
	
				if e_activate == 1:
					if temp_coorda == 7 and temp_coordb == 24 :
						if current_player.fight != 1 :
							current_player.square_movement(sector_map[6][25].get_vector(),
																				   sector_map[temp_coorda][temp_coordb].get_vector())
							current_player.set_pos(6,25)
							current_player.set_rotation_degrees(Vector3(0,180,0))
							path.clear()
							path.append("w")
						slab_stoper = 0
					elif temp_coorda == 17 and temp_coordb == 12 :
						if current_player.fight != 1 :
							current_player.square_movement(sector_map[18][13].get_vector(),
																				   sector_map[temp_coorda][temp_coordb].get_vector())
							current_player.set_pos(18,13)
							current_player.set_rotation_degrees(Vector3(0,180,0))
							path.clear()
							path.append("w")
						slab_stoper = 0
					else:
						if current_player.fight != 1 :
							current_player.square_movement(sector_map[temp_coorda][temp_coordb+1].get_vector(),sector_map[temp_coorda][temp_coordb].get_vector())
							current_player.set_pos(temp_coorda,temp_coordb+1)
							current_player.set_rotation_degrees(Vector3(0,180,0))
							path.clear()
							path.append("w")
							if sector_map[current_player.sector_a][current_player.sector_b].wait == 1: squares = 1
						slab_stoper = 0
			
			get_node("Interface/HBoxContainer2/GridContainer/NORTH").set_button_icon(preload("res://Direction_Icons/slab.png"))
			get_node("Interface/HBoxContainer2/GridContainer/NORTH").set_disabled(1)
			get_node("Interface/HBoxContainer2/GridContainer/SOUTH").set_button_icon(preload("res://Direction_Icons/slab.png"))
			get_node("Interface/HBoxContainer2/GridContainer/SOUTH").set_disabled(1)
			get_node("Interface/HBoxContainer2/GridContainer/WEST").set_button_icon(preload("res://Direction_Icons/slab.png"))
			get_node("Interface/HBoxContainer2/GridContainer/WEST").set_disabled(1)
			get_node("Interface/HBoxContainer2/GridContainer/EAST").set_button_icon(preload("res://Direction_Icons/slab.png"))
			get_node("Interface/HBoxContainer2/GridContainer/EAST").set_disabled(1)
	
			n_activate = 0
			s_activate = 0
			w_activate = 0 
			e_activate = 0
			
		else:
			if n_move == 1:
				if temp_coorda == 10 and temp_coordb == 23 :
					if current_player.fight != 1 :
						current_player.square_movement(sector_map[temp_coorda-2][temp_coordb].get_vector(),
															sector_map[temp_coorda][temp_coordb].get_vector())
						current_player.set_pos(temp_coorda-2,temp_coordb)
						current_player.set_rotation_degrees(Vector3(0,270,0))
						path.clear()
						path.append("s")
						if sector_map[current_player.sector_a][current_player.sector_b].wait == 1: squares = 1
				else:
					if current_player.fight != 1 :
						current_player.square_movement(sector_map[temp_coorda-1][temp_coordb].get_vector(),
																			   sector_map[temp_coorda][temp_coordb].get_vector())
						current_player.set_pos(temp_coorda-1,temp_coordb)
						current_player.set_rotation_degrees(Vector3(0,270,0))
						path.clear()
						path.append("s")
						if sector_map[current_player.sector_a][current_player.sector_b].wait == 1: squares = 1
			elif s_move == 1:
				if temp_coorda == 8 and temp_coordb == 23 :
					if current_player.fight != 1 :
						current_player.square_movement(sector_map[temp_coorda+2][temp_coordb].get_vector(),
															sector_map[temp_coorda][temp_coordb].get_vector())
						current_player.set_pos(temp_coorda+2,temp_coordb)
						current_player.set_rotation_degrees(Vector3(0,90,0))
						path.clear()
						path.append("n")
						if sector_map[current_player.sector_a][current_player.sector_b].wait == 1: squares = 1
				else:
					if current_player.fight != 1 :
						current_player.square_movement(sector_map[temp_coorda+1][temp_coordb].get_vector(),
																			   sector_map[temp_coorda][temp_coordb].get_vector())
						current_player.set_pos(temp_coorda+1,temp_coordb)
						current_player.set_rotation_degrees(Vector3(0,90,0))
						path.clear()
						path.append("n")
						if sector_map[current_player.sector_a][current_player.sector_b].wait == 1: squares = 1
			elif w_move == 1:
				if temp_coorda == 6 and temp_coordb == 25 :
					if current_player.fight != 1 :
						current_player.square_movement(sector_map[7][24].get_vector(),
																			   sector_map[temp_coorda][temp_coordb].get_vector())
						current_player.set_pos(7,24)
						current_player.set_rotation_degrees(Vector3(0,0,0))
						path.clear()
						path.append("e")
				elif temp_coorda == 18 and temp_coordb == 13 :
					if current_player.fight != 1 :
						current_player.square_movement(sector_map[17][12].get_vector(),
																			   sector_map[temp_coorda][temp_coordb].get_vector())
						current_player.set_pos(17,12)
						current_player.set_rotation_degrees(Vector3(0,0,0))
						path.clear()
						path.append("e")
				else:
					if current_player.fight != 1 :
						current_player.square_movement(sector_map[temp_coorda][temp_coordb-1].get_vector(),
																			   sector_map[temp_coorda][temp_coordb].get_vector())
						current_player.set_pos(temp_coorda,temp_coordb-1)
						current_player.set_rotation_degrees(Vector3(0,0,0))
						path.clear()
						path.append("e")
						if sector_map[current_player.sector_a][current_player.sector_b].wait == 1: squares = 1
			elif e_move == 1:
				
				if temp_coorda == 7 and temp_coordb == 24 :
					if current_player.fight != 1 :
						current_player.square_movement(sector_map[6][25].get_vector(),
																			   sector_map[temp_coorda][temp_coordb].get_vector())
						current_player.set_pos(6,25)
						current_player.set_rotation_degrees(Vector3(0,180,0))
						path.clear()
						path.append("w")
				elif temp_coorda == 17 and temp_coordb == 12 :
					if current_player.fight != 1 :
						current_player.square_movement(sector_map[18][13].get_vector(),
																			   sector_map[temp_coorda][temp_coordb].get_vector())
						current_player.set_pos(18,13)
						current_player.set_rotation_degrees(Vector3(0,180,0))
						path.clear()
						path.append("w")
				else:
					if current_player.fight != 1 :
						current_player.square_movement(sector_map[temp_coorda][temp_coordb+1].get_vector(),sector_map[temp_coorda][temp_coordb].get_vector())
						current_player.set_pos(temp_coorda,temp_coordb+1)
						current_player.set_rotation_degrees(Vector3(0,180,0))
						path.clear()
						path.append("w")
						if sector_map[current_player.sector_a][current_player.sector_b].wait == 1: squares = 1
		
		var movement_delay = Timer.new()
		movement_delay.set_wait_time(1)
		movement_delay.set_one_shot(true)
		self.add_child(movement_delay)
		movement_delay.start()
		yield(movement_delay, "timeout")
		movement_delay.queue_free()
		
		if current_player.fight == 1 :
			print( "YOROKOBE SHOUNEN!" )
			get_node("Interface/Fight").set_visible(1)
			while fighters.size() != 2 :
				var f_stop = Timer.new()
				f_stop.set_wait_time(1)
				f_stop.set_one_shot(true)
				self.add_child(f_stop)
				f_stop.start()
				yield(f_stop, "timeout")
				f_stop.queue_free()
				
			if fighters[0] > fighters[1] :
				get_node("Interface/AcceptDialog").dialog_text = current_player.dial + " has won the fight and obtained 5 experience points."
				get_node("Interface/AcceptDialog").popup()
				current_player.exp_points += 5
				var home
				if current_player.enemy.sector_start == "a" :
					home = current_player.enemy.sector_start_b
					current_player.enemy.sector_start = "b"
				else:
					home = current_player.enemy.sector_start_a
					current_player.enemy.sector_start = "a"
				if current_player.enemy.sector_end_1 == current_player.enemy.sector_end_a[0] :
					current_player.enemy.set_sector_end(current_player.enemy.sector_end_b[0],current_player.enemy.sector_end_b[1])
				else:
					current_player.enemy.set_sector_end(current_player.enemy.sector_end_a[0],current_player.enemy.sector_end_a[1])
				current_player.enemy.square_movement(home.get_vector(), sector_map[current_player.enemy.sector_a][current_player.enemy.sector_b].get_vector())
				if current_player.enemy.sector_start == "b" :
					current_player.enemy.set_start_pos_b()
				else:
					current_player.enemy.set_start_pos_a()
			elif fighters[0] < fighters[1] :
				get_node("Interface/AcceptDialog").dialog_text = current_player.enemy.dial + " has won the fight and obtained 5 experience points."
				get_node("Interface/AcceptDialog").popup()
				current_player.enemy.exp_points += 5
				var home
				if current_player.sector_start == "a" :
					home = current_player.sector_start_b
					current_player.sector_start = "b"
				else:
					home = current_player.sector_start_a
					current_player.sector_start = "a"
				if current_player.sector_end_1 == current_player.sector_end_a[0] :
					current_player.set_sector_end(current_player.sector_end_b[0],current_player.sector_end_b[1])
				else:
					current_player.set_sector_end(current_player.sector_end_a[0],current_player.sector_end_a[1])
				current_player.square_movement(home.get_vector(), sector_map[current_player.sector_a][current_player.sector_b].get_vector())
				if current_player.sector_start == "b" :
					current_player.set_start_pos_b()
				else:
					current_player.set_start_pos_a()
			else:
				get_node("Interface/AcceptDialog").dialog_text = "Fight has ended with a draw."
				get_node("Interface/AcceptDialog").popup()
				var home
				if current_player.sector_start == "a" :
					home = current_player.sector_start_b
					current_player.sector_start = "b"
				else:
					home = current_player.sector_start_a
					current_player.sector_start = "a"
				if current_player.sector_end_1 == current_player.sector_end_a[0] :
					current_player.set_sector_end(current_player.sector_end_b[0],current_player.sector_end_b[1])
				else:
					current_player.set_sector_end(current_player.sector_end_a[0],current_player.sector_end_a[1])
				current_player.square_movement(home.get_vector(), sector_map[current_player.sector_a][current_player.sector_b].get_vector())
				if current_player.sector_start == "b" :
					current_player.set_start_pos_b()
				else:
					current_player.set_start_pos_a()
					
				var home2
				if current_player.enemy.sector_start == "a" :
					home2 = current_player.enemy.sector_start_b
					current_player.enemy.sector_start = "b"
				else:
					home2 = current_player.enemy.sector_start_a
					current_player.enemy.sector_start = "a"
				if current_player.enemy.sector_end_1 == current_player.enemy.sector_end_a[0] :
					current_player.enemy.set_sector_end(current_player.enemy.sector_end_b[0],current_player.enemy.sector_end_b[1])
				else:
					current_player.enemy.set_sector_end(current_player.enemy.sector_end_a[0],current_player.enemy.sector_end_a[1])
				current_player.enemy.square_movement(home2.get_vector(), sector_map[current_player.enemy.sector_a][current_player.enemy.sector_b].get_vector())
				if current_player.enemy.sector_start == "b" :
					current_player.enemy.set_start_pos_b()
				else:
					current_player.enemy.set_start_pos_a()
			
			get_node("Interface/VBoxContainer/NinePatchRect/Label").text = str(current_player.exp_points)
			fighters.clear()
			current_player.enemy.fight = 0
			current_player.fight = 0
			get_node("Interface/Fight").set_visible(0)
			squares = 1
		
		current_player.set_visible(1)
		squares = squares - 1
		
	if sector_map[current_player.sector_a][current_player.sector_b].hide == 1 :
		current_player.set_visible(0)
		
	if sector_map[current_player.sector_a][current_player.sector_b].tree == 1 and current_player.temp_tree_bonus == 0 :
		current_player.exp_points += 50
		get_node("Interface/VBoxContainer/NinePatchRect/Label").text = str(current_player.exp_points)
		get_node("Interface/AcceptDialog").dialog_text = "Tree of Life enlightens you. " + current_player.dial + " has obtained 50 experience points."
		get_node("Interface/AcceptDialog").popup()
		current_player.temp_tree_bonus = 1
	elif sector_map[current_player.sector_a][current_player.sector_b].tree == 1 and current_player.temp_tree_bonus == 1 :
		get_node("Interface/AcceptDialog").dialog_text = "Tree of Life is silent."
		get_node("Interface/AcceptDialog").popup()
		
	if sector_map[current_player.sector_a][current_player.sector_b].s_bonus == 1 and current_player.visited.has(Vector2(current_player.sector_a,current_player.sector_b))!=true :
		current_player.exp_points += 15
		var bonus
		var random_choice = randi()%2
		if random_choice == 0 :
			current_player.attack += 1
			bonus = "attack"
		elif random_choice == 1 :
			current_player.defense += 1
			bonus = "defense"
		get_node("Interface/VBoxContainer/NinePatchRect/Label").text = str(current_player.exp_points)
		get_node("Interface/VBoxContainer/NinePatchRect2/Label").text = str(current_player.attack)
		get_node("Interface/VBoxContainer/NinePatchRect3/Label").text = str(current_player.defense)
		get_node("Interface/AcceptDialog").dialog_text = "You found something helpful. " + current_player.dial + " has obtained 15 experience points and 1 " + bonus + " point."
		get_node("Interface/AcceptDialog").popup()
		current_player.visited.append(Vector2(current_player.sector_a,current_player.sector_b))
	elif sector_map[current_player.sector_a][current_player.sector_b].s_bonus == 1 and current_player.visited.has(Vector2(current_player.sector_a,current_player.sector_b))==true :
		get_node("Interface/AcceptDialog").dialog_text = "There is nothing left in here."
		get_node("Interface/AcceptDialog").popup()
	if sector_map[current_player.sector_a][current_player.sector_b].b_bonus == 1 and current_player.visited.has(Vector2(current_player.sector_a,current_player.sector_b))!=true :
		current_player.exp_points += 40
		var bonus
		var random_choice = randi()%2
		if random_choice == 0 :
			current_player.attack += 2
			bonus = "attack"
		elif random_choice == 1 :
			current_player.defense += 2
			bonus = "defense"
		get_node("Interface/VBoxContainer/NinePatchRect/Label").text = str(current_player.exp_points)
		get_node("Interface/VBoxContainer/NinePatchRect2/Label").text = str(current_player.attack)
		get_node("Interface/VBoxContainer/NinePatchRect3/Label").text = str(current_player.defense)
		get_node("Interface/AcceptDialog").dialog_text = "This is a mystical place. " + current_player.dial + " has obtained 40 experience points and 2 " + bonus + " points."
		get_node("Interface/AcceptDialog").popup()
		current_player.visited.append(Vector2(current_player.sector_a,current_player.sector_b))
	elif sector_map[current_player.sector_a][current_player.sector_b].b_bonus == 1 and current_player.visited.has(Vector2(current_player.sector_a,current_player.sector_b))==true :
		get_node("Interface/AcceptDialog").dialog_text = "This place is empty."
		get_node("Interface/AcceptDialog").popup()
		
	if current_player.check_sector_end():
		
		var end_pos_a = current_player.sector_a
		var end_pos_b = current_player.sector_b
		
		if end_pos_a == 3 and end_pos_b == 28 :
			current_player.set_rotation_degrees(Vector3(0,0,0))
			current_player.set_sector_end(Vector2(15,1),Vector2(31,17))
		if end_pos_a == 31 and end_pos_b == 30 :
			current_player.set_rotation_degrees(Vector3(0,0,0))
			current_player.set_sector_end(Vector2(1,16),Vector2(15,1))
		if end_pos_a == 15 and end_pos_b == 1 :
			current_player.set_rotation_degrees(Vector3(0,180,0))
			current_player.set_sector_end(Vector2(3,28),Vector2(31,30))
		if end_pos_a == 1 and end_pos_b == 16 :
			current_player.set_rotation_degrees(Vector3(0,90,0))
			current_player.set_sector_end(Vector2(29,0),Vector2(31,30))
		if end_pos_a == 29 and end_pos_b == 0 :
			current_player.set_rotation_degrees(Vector3(0,180,0))
			current_player.set_sector_end(Vector2(15,32),Vector2(1,16))
		if end_pos_a == 15 and end_pos_b == 32 :
			current_player.set_rotation_degrees(Vector3(0,0,0))
			current_player.set_sector_end(Vector2(29,0),Vector2(1,1))
		if end_pos_a == 1 and end_pos_b == 1 :
			current_player.set_rotation_degrees(Vector3(0,180,0))
			current_player.set_sector_end(Vector2(15,32),Vector2(31,17))
		if end_pos_a == 31 and end_pos_b == 17 :
			current_player.set_rotation_degrees(Vector3(0,270,0))
			current_player.set_sector_end(Vector2(1,1),Vector2(3,28))
			
		get_node("Interface/AcceptDialog").dialog_text = "Quest completed. " + current_player.dial + " has obtained 50 experience points."
		get_node("Interface/AcceptDialog").popup()
		
		current_player.visited.clear()
		current_player.laps_ended += 1
		current_player.exp_points += 50
		current_player.temp_tree_bonus = 0
		get_node("Interface/VBoxContainer/NinePatchRect/Label").text = str(current_player.exp_points)
	
	var endturn = Timer.new()
	endturn.set_wait_time(1)
	endturn.set_one_shot(true)
	self.add_child(endturn)
	endturn.start()
	yield(endturn, "timeout")
	endturn.queue_free()
	
	#ASC WAIT
	var afterwait = 0
	while current_player.exp_points > 99 and current_player.asc == 0 :
		var ascwait = Timer.new()
		ascwait.set_wait_time(1)
		ascwait.set_one_shot(true)
		self.add_child(ascwait)
		ascwait.start()
		yield(ascwait, "timeout")
		ascwait.queue_free()
		afterwait = 1
	if afterwait == 1:
		var aftwait = Timer.new()
		aftwait.set_wait_time(2)
		aftwait.set_one_shot(true)
		self.add_child(aftwait)
		aftwait.start()
		yield(aftwait, "timeout")
		aftwait.queue_free()
		afterwait = 0
	
	player_queue_ver_beta()
		
	get_node("Interface/HBoxContainer/GridContainer/Button").set_disabled(0)

	pass


