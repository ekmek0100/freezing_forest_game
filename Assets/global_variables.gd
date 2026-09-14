extends Node
#There are Global variables to instert gui or anothers
var remain_blocks_inv = 32
var remain_hp = 100
var timer_days = 0
var is_blocks_reached_limit
var timer_seconds = 0
var timer_minutes = 0
var timer_hours = 0
var frozen_level = 0
func _process(delta: float) -> void:
	timer_seconds += delta * 10.0
	if timer_seconds >= 25:
		timer_seconds = 0
		timer_minutes += 1
	if timer_minutes >= 60:
		timer_hours += 1
		timer_minutes = 0
	if timer_hours == 24:
		timer_hours = 0
		timer_days += 1
