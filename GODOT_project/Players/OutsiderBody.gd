extends KinematicBody

var velocity = Vector3()

var who = "I am an Outsider"
var dial = "Outsider"

var sector_a = 0
var sector_b = 0
var sector_end_1 = Vector2()
var sector_end_2 = Vector2()

var sector_start
var sector_start_a
var sector_start_b
var sector_end_a = [Vector2(15,32),Vector2(31,17)]
var sector_end_b = [Vector2(1,1),Vector2(3,28)]

func set_pos(a,b) :
	sector_a = a
	sector_b = b
	
func set_start_pos_a() :
	sector_a = 1
	sector_b = 1
	
func set_start_pos_b() :
	sector_a = 31
	sector_b = 17
	
func set_sector_end(a,b):
	sector_end_1 = a
	sector_end_2 = b
	
func check_sector_end():
	if sector_end_1.x == sector_a and sector_end_1.y == sector_b :
		return true
	elif sector_end_2.x == sector_a and sector_end_2.y == sector_b :
		return true
	else:
		return false
	
func square_movement(destination,position):
	move_and_collide(destination - position)
	
func read_objective():
	var quests = []
	
	if sector_end_1 == Vector2(1,1): quests.append("Corrupted Land")
	elif sector_end_1 == Vector2(31,17): quests.append("Swamp")
	elif sector_end_1 == Vector2(3,28): quests.append("Castle")
	elif sector_end_1 == Vector2(31,30): quests.append("Inn")
	elif sector_end_1 == Vector2(15,1): quests.append("Cave")
	elif sector_end_1 == Vector2(1,16): quests.append("Crypt")
	elif sector_end_1 == Vector2(29,0): quests.append("Mountains")
	elif sector_end_1 == Vector2(15,32): quests.append("Forest")
	
	if sector_end_2 == Vector2(1,1): quests.append("Corrupted Land")
	elif sector_end_2 == Vector2(31,17): quests.append("Swamp")
	elif sector_end_2 == Vector2(3,28): quests.append("Castle")
	elif sector_end_2 == Vector2(31,30): quests.append("Inn")
	elif sector_end_2 == Vector2(15,1): quests.append("Cave")
	elif sector_end_2 == Vector2(1,16): quests.append("Crypt")
	elif sector_end_2 == Vector2(29,0): quests.append("Mountains")
	elif sector_end_2 == Vector2(15,32): quests.append("Forest")
	
	return quests
	
#STATISTICS
var attack = 4
var defense = 2
var race = preload("res://Names/outsider.png")
var exp_points = 0
var asc = 0
var asc_stage
var asc_sickness = 0
var laps_ended = 0

func ascend_1(to):
	asc_stage = to
	get_node("WORKER").set_visible(0)
	to.set_visible(1)
	asc = 1
	
func sickness():
	asc_stage.set_visible(0)
	attack += 5
	defense += 2
	get_node("DEVOURER").set_visible(1)
	
func ascend_2():
	asc_stage.set_visible(0)
	if asc_stage == get_node("BATTLEUNIT"):
		attack += 4
		defense += 4
		get_node("HERO").set_visible(1)
	elif asc_stage == get_node("COLLECTOR"):
		attack += 11
		get_node("POISONER").set_visible(1)
	elif asc_stage == get_node("SCOUT"):
		attack += 7
		defense += 4
		get_node("WASP").set_visible(1)
	elif asc_stage == get_node("EATER"):
		defense += 8
		get_node("HULKANT").set_visible(1)
	asc = 2

var temp_tree_bonus = 0
var visited = []
var fight = 0
var enemy

func _physics_process(delta):
	self.move_and_collide(velocity)
	
	
	if Input.is_action_pressed("ui_left"): 
		get_node("Camera_Holder").rotation.y += 0.05
	if Input.is_action_pressed("ui_right"): 
		get_node("Camera_Holder").rotation.y -= 0.05



func _on_Area_body_entered(body):
	fight = 1
	body.fight = 1
	print(who)
	enemy = body
