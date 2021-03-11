extends Control

var countdown = 5

func _ready():
	update_label()


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Countdown_timeout():
	countdown -= 1
	update_label()
	
func update_label():
	$countdown_label.text = "Starting in: " + str(countdown)
	if countdown <= 0:
		hide()
		$Countdown.stop()
		get_tree().paused = false
