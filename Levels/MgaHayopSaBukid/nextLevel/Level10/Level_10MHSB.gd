extends Control

signal repeat


# Called when the node enters the scene tree for the first time.
func _ready():
	#This will play the Voiceover..
	voiceOver()
	
#===========================================
func voiceOver():
	yield(get_tree().create_timer(1.0), "timeout")
	$'%infoMouse'.play()
	if $"%infoMouse".playing:
		$"%coverButton".show()


func _on_x_pressed():
	ScrollPop.play()
	$"%infoMouse".stream_paused = false
	$'%askVoice10'.stream_paused = false
	$'%mouseVoice'.stream_paused = false
	$'%choiceA'.stream_paused = false
	$'%choiceB'.stream_paused = false
	$'%choiceC'.stream_paused = false
	$'%pickAnswer'.stream_paused = false
	
	
func _on_pauseButton_pressed():
	MenuClickSfxPlayer.play()
	$"%pausePanel".show()
	print("Shows the Pause Panel")
	$"%infoMouse".stream_paused = true
	$'%askVoice10'.stream_paused = true
	$'%mouseVoice'.stream_paused = true
	$'%choiceA'.stream_paused = true
	$'%choiceB'.stream_paused = true
	$'%choiceC'.stream_paused = true
	$'%pickAnswer'.stream_paused = true
	
	#===========================================

func _on_A_pressed():
	print('The Answer is Correct!')
	WrongAnswer.play()
	print("Pressed A, Correct Answer")
	$'%ScorePanel2StarA'.show()

func _on_ScorePanel2StarA_visibility_changed():
	yield(get_tree().create_timer(0.12), "timeout")
	$'%wrongPick'.play()
	$'%animB2'.play('blink')
	$"%animB".play('blink')
	print("Shows 2 Star and Blink")
#=====================================================
	
func _on_B_pressed():
	print('The Answer is Wrong!')
	WrongAnswer.play()
	print("Pressed B, Wrong Answer")
	$'%ScorePanel2StarB'.show()
	
func _on_ScorePanel2StarB_visibility_changed():
	yield(get_tree().create_timer(0.12), "timeout")
	$'%wrongPick'.play()
	print("Plays WrongPick")
	$'%animA'.play('blink')
	$'%animA2'.play('blink')
	print("Shows 2 Star and Blinky")
#=============================================================
	
func _on_C_pressed():
	print('The Answer is Wrong!')
	CorrectAnswer.play()
	print("Pressed C, Wrong Answer")
	$'%ScorePanel3StarC'.show()
	
func _on_ScorePanel3StarC_visibility_changed():
	yield(get_tree().create_timer(0.12), "timeout")
	$'%correctPick'.play()
	print("Plays Wrong Pick")
	$'%animA'.play('blink')
	$'%animC'.play('blink')
	print("Shows 2 Star and Blinky")
	
#=============================================s
func _on_repeat_pressed():
	ScrollPop.play()
	$'%infoMouse'.play()
	print("Repeat Info got Pressed")
	emit_signal("repeat")
	print("Emits Signal")
	$"%infoMouse".stop()
	$'%coverButton'.show()
	$"%A".hide()
	$"%B".hide()
	$"%C".hide()
	print("Hide Repeat Button")
	if not $"%infoMouse".playing or $'%mouseVoice' or $"%askVoice10".playing or $"%choiceA".playing or $"%choiceB".playing or $"%choiceC".playing or $"%pickAnswer".playing:
		$"%coverButton".show()
		print("Cover Show")
	else:
		$"%coverButton".hide()
		print("Cover Hide")
	

func _on_infoMouse_finished():
	yield(get_tree().create_timer(0.9), "timeout")
	$'%mouseVoice'.play()

func _on_mouseVoice_finished():
	yield(get_tree().create_timer(0.9), "timeout")
	$'%askVoice10'.play()

func _on_askVoice10_finished():
	yield(get_tree().create_timer(0.9), "timeout")
	$'%choiceA'.play()
	$'%A'.show()
	$"%A".disabled = true
	yield(get_tree().create_timer(0.9), "timeout")
	print("Show A")
	print("Disabled A")

func _on_choiceA_finished():
	yield(get_tree().create_timer(0.9), "timeout")
	$'%choiceB'.play()
	$'%B'.show()
	$'%A'.hide()
	$"%B".disabled = true
	yield(get_tree().create_timer(0.9), "timeout")
	print("Show B")
	print("Disabled B")

func _on_choiceB_finished():
	yield(get_tree().create_timer(0.9), "timeout")
	$'%choiceC'.play()
	$'%C'.show()
	$'%A'.hide()
	$'%B'.hide()
	$"%C".disabled = true
	yield(get_tree().create_timer(0.9), "timeout")
	print("Show C")
	print("Disabled C")

func _on_choiceC_finished():
	yield(get_tree().create_timer(0.9), "timeout")
	$'%pickAnswer'.play()
	$'%A'.show()
	$'%B'.show()
	print("Show A, B, C")
	print("Plays Repeat Info")


func _on_pickAnswer_finished():
	$'%coverButton'.hide()
	$"%C".disabled = false
	$"%B".disabled = false
	$"%A".disabled = false
	print("Enabled Button A, B, C")


func _on_levels_pressed() -> void:
	ScrollPop.play()
	var home = get_tree().change_scene('res://Levels/MgaHayopSaBukid/MgaHayopSaBukid.tscn')
	print('Go to Level Selection')
	
func _on_home_pressed() -> void:
	ScrollPop.play()
	var home = get_tree().change_scene("res://Scenes/MainMenu.tscn")
	print("To Main Menu")
	
func _on_retry_pressed() -> void:
	ScrollPop.play()
	var retry = get_tree().change_scene("res://Levels/MgaHayopSaBukid/nextLevel/Level10/Level_10MHSB.tscn")
	print('Retry level')

func _on_nextQuestion_pressed() -> void:
	ScrollPop.play()
	yield(get_tree().create_timer(0.12), "timeout")
	var retry = get_tree().change_scene("res://Levels/MgaHayopSaBukid/nextLevel/Level11/Level_11MHSB.tscn")




