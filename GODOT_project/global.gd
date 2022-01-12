extends Node

var human = 0
var undead = 0
var elf = 0
var outsider = 0

var lap_end = 1

func add_human():
	human = 1
func remove_human():
	human = 0
	
func add_undead():
	undead = 1
func remove_undead():
	undead = 0
	
func add_elf():
	elf = 1
func remove_elf():
	elf = 0
	
func add_outsider():
	outsider = 1
func remove_outsider():
	outsider = 0
	
func add_lap():
	lap_end += 1
func remove_lap():
	lap_end -= 1
