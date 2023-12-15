extends Control


func _ready() -> void:
	print("This Is HAIR")

func _on_ButtonLeft_pressed() -> void:
	# Update the Tween node for transitioning to the left
	$'%AnimLeft'.play('animPick')
	print("Pressed Left")
	
func _on_goBack_pressed() -> void:
	var home = get_tree().change_scene("res://Levels/BodyParts/BodyParts.tscn")

func _on_AnimLeft_animation_finished(_anim_name: String) -> void:
	var left = get_tree().change_scene("res://Levels/BodyParts/Flashcards/ForeheadMain.tscn")
	print("Changes Scene to FOREHEAD")

func _on_hairAudio_finished() -> void:
	$'%Panel'.hide()
	$'%ButtonLeft'.disabled = false


func _on_PlayAudio_pressed() -> void:
	$'%hairAudio'.play()
	
	if $'%hairAudio'.playing:
		$'%Panel'.show()
		$'%ButtonLeft'.disabled = true
		print("Button Disabled")
	print("THIS IS HEAD")
	
