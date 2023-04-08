extends Node

var volume: float = -4

func _process(delta):
	delta = delta
	$AudioStreamPlayer.volume_db = volume
	
	if Global.meanMood < 5: 
		$Tween.interpolate_property(
			$AudioStreamPlayer, "pitch_scale",
			$AudioStreamPlayer.pitch_scale, convertSpeed(Global.meanMood), 7,
			Tween.TRANS_LINEAR, Tween.EASE_IN_OUT
		)
		$Tween.start()
	else:
		$Tween.interpolate_property(
			$AudioStreamPlayer, "pitch_scale",
			$AudioStreamPlayer.pitch_scale, 1, 7,
			Tween.TRANS_LINEAR, Tween.EASE_IN_OUT
		)
		$Tween.start()

func convertSpeed (x: float):
	return 0.7 + 0.06 * x
