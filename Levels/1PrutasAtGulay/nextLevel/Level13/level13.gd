extends Control

signal repeat

const USERNAME_FILE_PATH = "user://settings/username.gmd"

# Called when the node enters the scene tree for the first time.
func _ready():
	#This will play the Voiceover..
	voiceOver()
	
#===========================================
func voiceOver():
	yield(get_tree().create_timer(0.5), "timeout")
	$'%infoDurian'.play()
	if $"%infoDurian".playing:
		$"%coverButton".show()


func _on_x_pressed():
	$"%infoDurian".stream_paused = false
	$'%askVoice13'.stream_paused = false
	$'%choiceA'.stream_paused = false
	$'%choiceB'.stream_paused = false
	$'%choiceC'.stream_paused = false
	$'%pickAnswer'.stream_paused = false
	
	
func _on_pauseButton_pressed():
	MenuClickSfxPlayer.play()
	$"%pausePanel".show()
	print("Shows the Pause Panel")
	$"%infoDurian".stream_paused = true
	$'%askVoice13'.stream_paused = true
	$'%choiceA'.stream_paused = true
	$'%choiceB'.stream_paused = true
	$'%choiceC'.stream_paused = true
	$'%pickAnswer'.stream_paused = true
	
	#===========================================

func _on_A_pressed():
	WrongAnswer.play()
	$'%ScorePanel2StarA'.show()

func _on_ScorePanel2StarA_visibility_changed():
	yield(get_tree().create_timer(0.12), "timeout")
	$'%wrongPick'.play()
	$'%animA2'.play('blink')
	$"%animA".play('blink')
#=====================================================
	
func _on_B_pressed():
	CorrectAnswer.play()
	$'%ScorePanel3StarB'.show()
	
func _on_ScorePanel3StarB_visibility_changed():
	yield(get_tree().create_timer(0.12), "timeout")
	$'%correctPick'.play()
	$'%animB'.play('blink')
	$'%animB2'.play('blink')
	print("Shows 3 Star and Blinky")
#=============================================================
	
func _on_C_pressed():
	WrongAnswer.play()
	$'%ScorePanel2StarC'.show()
	
func _on_ScorePanel2StarC_visibility_changed():
	yield(get_tree().create_timer(0.12), "timeout")
	$'%wrongPick'.play()
	print("Plays Wrong Pick")
	$'%animA'.play('blink')
	$'%animC'.play('blink')
	print("Shows 2 Star and Blinky")
	
#=============================================s
func _on_repeat_pressed():
	$'%infoDurian'.play()
	print("Repeat Info got Pressed")
	emit_signal("repeat")
	print("Emits Signal")
	$"%infoDurian".stop()
	$'%coverButton'.show()
	$"%A".hide()
	$"%B".hide()
	$"%C".hide()
	print("Hide Repeat Button")
	if not $"%infoDurian".playing or $"%askVoice13".playing or $"%choiceA".playing or $"%choiceB".playing or $"%choiceC".playing or $"%pickAnswer".playing:
		$"%coverButton".show()
		print("Cover Show")
	else:
		$"%coverButton".hide()
		print("Cover Hide")
	

func _on_infoDurian_finished():
	yield(get_tree().create_timer(0.9), "timeout")
	$'%askVoice13'.play()
	
	
func _on_askVoice13_finished():
	yield(get_tree().create_timer(0.9), "timeout")
	$'%choiceA'.play()
	$'%A'.show()
	$"%A".disabled = true
	yield(get_tree().create_timer(0.8), "timeout")
	print("Show A")
	print("Disabled A")

func _on_choiceA_finished():
	yield(get_tree().create_timer(0.9), "timeout")
	$'%choiceB'.play()
	$'%B'.show()
	$'%A'.hide()
	$"%B".disabled = true
	yield(get_tree().create_timer(0.8), "timeout")
	print("Show B")
	print("Disabled B")

func _on_choiceB_finished():
	yield(get_tree().create_timer(0.9), "timeout")
	$'%choiceC'.play()
	$'%C'.show()
	$'%A'.hide()
	$'%B'.hide()
	$"%C".disabled = true
	yield(get_tree().create_timer(0.8), "timeout")
	print("Show C")
	print("Disabled C")

func _on_choiceC_finished():
	yield(get_tree().create_timer(0.9), "timeout")
	$'%pickAnswer'.play()
	$'%A'.show()
	$'%B'.show()
	print("Show A, B, C")
	print("Plays Repeat Info")
	yield(get_tree().create_timer(0.9), "timeout")

func _on_pickAnswer_finished():
	$'%coverButton'.hide()
	$"%C".disabled = false
	$"%B".disabled = false
	$"%A".disabled = false
	print("Enabled Button A, B, C")


func _on_levels_pressed() -> void:
	var home = get_tree().change_scene('res://Levels/1PrutasAtGulay/PrutasAtGulayLevel.tscn')
	print('Go to Level Selection')
	
func _on_home_pressed() -> void:
	var home = get_tree().change_scene("res://Scenes/MainMenu.tscn")
	print("To Main Menu")
	
func _on_retry_pressed() -> void:
	var retry = get_tree().change_scene("res://Levels/1PrutasAtGulay/nextLevel/Level13/level13.tscn")
	print('Retry level')

func _on_nextQuestion_pressed() -> void:
	ScrollPop.play()
	yield(get_tree().create_timer(0.12), "timeout")
	var retry = get_tree().change_scene("res://Levels/1PrutasAtGulay/nextLevel/Level14/level14.tscn")






