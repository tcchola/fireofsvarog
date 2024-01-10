extends Control

func _ready() -> void:
	$"AudioStreamPlayer".play()
#	$"VideoStreamPlayer".stream.loop = true
	

#func _process(delta):
#	if $VideoStreamPlayer.stream.playback_position >= $VideoStreamPlayer.stream.get_length() - delta:
#		$VideoStreamPlayer.stream.playback_position = 0 # Reset to start
#		$VideoStreamPlayer.play()


func _on_begin_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/entrance_cutscene.tscn")


func _on_quit_pressed() -> void:
	get_tree().quit()


func _on_credits_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/credits.tscn")


func _on_check_button_toggled(button_pressed: bool) -> void:
	$"AudioStreamPlayer".stream_paused = !$"AudioStreamPlayer".stream_paused
