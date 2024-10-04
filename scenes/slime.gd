extends CharacterBody2D

@export var speed = 100
var health = 10

func _process(delta: float) -> void:
	get_parent().set_progress(get_parent().get_progress() + speed*delta)
	if get_parent().get_progress_ratio() == 1:
		queue_free()

	if health <= 0:
		get_parent().get_parent().queue_free()