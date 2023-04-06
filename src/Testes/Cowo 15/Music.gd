extends Node

var Volume: float = -4

func _process(delta):
	delta = delta
	$AudioStreamPlayer.volume_db = Volume
	
	if Global.Media < 5: 
		$Tween.interpolate_property(
			$AudioStreamPlayer, "pitch_scale",
			$AudioStreamPlayer.pitch_scale, convertSpeed(Global.Media), 7,
			Tween.TRANS_LINEAR, Tween.EASE_IN_OUT
		)
		$Tween.start()

func convertSpeed (x: float):
	return 0.7 + 0.06 * x
