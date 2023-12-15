extends Control

func _ready() -> void:
	print("This Is HEAD")


func _on_ButtonLeft_pressed() -> void:
	# Update the Tween node for transitioning to the left
	$'%AnimLeft'.play('animPick')
	print("Pressed Left")
	
func _on_goBack_pressed() -> void:
	var home = get_tree().change_scene("res://Levels/BodyParts/BodyParts.tscn")

func _on_AnimLeft_animation_finished(_anim_name: String) -> void:
	var left = get_tree().change_scene("res://Levels/BodyParts/Flashcards/HairMain.tscn")
	print("Changes Scene to HAIR")

func _on_ButtonHead_pressed() -> void:
	$'%headAudio'.play()
	
	if $'%headAudio'.playing:
		$'%Panel'.show()
		$'%ButtonLeft'.disabled = true
		print("Button Disabled")
	print("THIS IS HEAD")
	
func _on_headAudio_finished() -> void:
	$'%Panel'.hide()
	$'%ButtonLeft'.disabled = false
	print("Repeat Able, Next Able")
