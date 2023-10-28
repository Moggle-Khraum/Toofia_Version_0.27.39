extends BaseScroll
#The above is referencing the Template base called BaseScroll

var backtoTopic = load('res://Scenes/MenuChoices.tscn')

#THIS IS FOR SIGNAL that was used by Buttons
signal pressed


#This is for the Left Button
func _on_LeftButton_pressed() -> void:
	ScrollPop.play()
	# Calculate the target horizontal scroll position
	scrollerContainer.scroll_horizontal = lerp(scrollerContainer.scroll_horizontal, scrollerContainer.scroll_horizontal - scrollStep, scrollWeight)
	scrollerContainer.scroll_horizontal -= scrollStep
	print("Pressed Left Button '<='")
	

#This is for the Right Button
func _on_RightButton_pressed() -> void:
	ScrollPop.play()
	scrollerContainer.scroll_horizontal = lerp(scrollerContainer.scroll_horizontal, scrollerContainer.scroll_horizontal + scrollStep, scrollWeight)
	scrollerContainer.scroll_horizontal += scrollStep
	print("Pressed Rigght Button '=>'")


func _on_GoBackButton_pressed() -> void:
	print("Presses Go Back")
	MenuClickSfxPlayer.play()
	#handles the Go back button
	var levelSelect = get_tree().change_scene_to(backtoTopic)
	$'%animalsTheme'.stream_paused = true
	print("Going to Topic Selector")
	
	
	
	
	
################################################################################################
#
# THIS IS FOR THE LEVELS, THE BUTTONS OF LEVELS
#
#UPPER ROW BUTTONS
# THIS IS LEVEL 1
func _on_1Button_pressed() -> void:
	LevelsButtons.play()
	print("Presses Level 1")
	var level1 = get_tree().change_scene("res://Levels/MgaHayopSaBukid/Level1/1stQuestion/Level_1MHSB.tscn")
	emit_signal('pressed')
	print ("You are now at Level 1")
	MainMenuThemePlayer.stop()
	
# THIS IS LEVEL 2
func _on_2Button_pressed() -> void:
	LevelsButtons.play()
	print("Presses Level 2")
	var level2 = get_tree().change_scene("res://Levels/MgaHayopSaBukid/Level2/Level_2MHSB.tscn")
	emit_signal('pressed')
	print ("You are now at Level 2")
	$'%animalsTheme'.stream_paused = true
	
# THIS IS LEVEL 3
func _on_3Button_pressed() -> void:
	LevelsButtons.play()
	print("Presses Level 3")
	var level3 = get_tree().change_scene("res://Levels/MgaHayopSaBukid/Level3/Level_3MHSB.tscn")
	emit_signal('pressed')
	print ("You are now at Level 3")
	$'%animalsTheme'.stream_paused = true

# THIS IS LEVEL 4
func _on_4Button_pressed() -> void:
	LevelsButtons.play()
	print("Presses Level 4")
	var level4 = get_tree().change_scene("res://Levels/MgaHayopSaBukid/Level4/Level_4MHSB.tscn")
	emit_signal('pressed')
	print ("You are now at Level 4")
	$'%animalsTheme'.stream_paused = true

# THIS IS LEVEL 5
func _on_9Button_pressed() -> void:
	LevelsButtons.play()
	print("Presses Level 5")
	var level5 = get_tree().change_scene("res://Levels/MgaHayopSaBukid/Level5/Level_5MHSB.tscn")
	emit_signal('pressed')
	print ("You are now at Level 5")
	$'%animalsTheme'.stream_paused = true

# THIS IS LEVEL 6
func _on_10Button_pressed() -> void:
	LevelsButtons.play()
	print("Presses Level 6")
	var level6 = get_tree().change_scene("res://Levels/MgaHayopSaBukid/Level6/Level_6MHSB.tscn")
	emit_signal('pressed')
	print ("You are now at Level 6")
	$'%animalsTheme'.stream_paused = true

# THIS IS LEVEL 7
func _on_11Button_pressed() -> void:
	LevelsButtons.play()
	print("Presses Level 7")
	var level7 = get_tree().change_scene("res://Levels/MgaHayopSaBukid/Level7/Level_7MHSB.tscn")
	emit_signal('pressed')
	print ("You are now at Level 7")
	$'%animalsTheme'.stream_paused = true

# THIS IS LEVEL 8
func _on_12Button_pressed() -> void:
	LevelsButtons.play()
	print("Presses Level 8")
	var level8 = get_tree().change_scene("res://Levels/MgaHayopSaBukid/Level8/Level_8MHSB.tscn")
	emit_signal('pressed')
	print ("You are now at Level 8")
	$'%animalsTheme'.stream_paused = true

### LOW ROW BUTTONS
# THIS IS LEVEL 9
func _on_5Button_pressed() -> void:
	LevelsButtons.play()
	print("Presses Level 9")
	var level9 = get_tree().change_scene("res://Levels/MgaHayopSaBukid/Level9/Level_9MHSB.tscn")
	emit_signal('pressed')
	print ("You are now at Level 9")
	$'%animalsTheme'.stream_paused = true

# THIS IS LEVEL 10
func _on_6Button_pressed() -> void:
	LevelsButtons.play()
	print("Presses Level 10")
	var level10 = get_tree().change_scene("res://Levels/MgaHayopSaBukid/nextLevel/Level10/Level_10MHSB.tscn")
	emit_signal('pressed')
	print ("You are now at Level 10")
	$'%animalsTheme'.stream_paused = true

# THIS IS LEVEL 11
func _on_7Button_pressed() -> void:
	LevelsButtons.play()
	print("Presses Level 11")
	var level11 = get_tree().change_scene("res://Levels/MgaHayopSaBukid/nextLevel/Level11/Level_11MHSB.tscn")
	emit_signal('pressed')
	print ("You are now at Level 11")
	$'%animalsTheme'.stream_paused = true

# THIS IS LEVEL 12
func _on_8Button_pressed() -> void:
	LevelsButtons.play()
	print("Presses Level 12")
	var level12 = get_tree().change_scene("res://Levels/MgaHayopSaBukid/nextLevel/Level12/Level_12MHSB.tscn")
	emit_signal('pressed')
	print ("You are now at Level 12")
	$'%animalsTheme'.stream_paused = true

# THIS IS LEVEL 13
func _on_13Button_pressed() -> void:
	LevelsButtons.play()
	print("Presses Level 13")
	var level13 = get_tree().change_scene("res://Levels/MgaHayopSaBukid/nextLevel/Level13/Level_13MHSB.tscn")
	emit_signal('pressed')
	print ("You are now at Level 13")
	$'%animalsTheme'.stream_paused = true

# THIS IS LEVEL 14
func _on_14Button_pressed() -> void:
	LevelsButtons.play()
	print("Presses Level 14")
	var level14 = get_tree().change_scene("res://Levels/MgaHayopSaBukid/nextLevel/Level14/Level_14MHSB.tscn")
	emit_signal('pressed')
	print ("You are now at Level 14")
	$'%animalsTheme'.stream_paused = true

# THIS IS LEVEL 15
func _on_15Button_pressed() -> void:
	LevelsButtons.play()
	print("Presses Level 15")
	var level15 = get_tree().change_scene("res://Levels/MgaHayopSaBukid/nextLevel/Level15/Level_15MHSB.tscn")
	emit_signal('pressed')
	print ("You are now at Level 15")
	$'%animalsTheme'.stream_paused = true
	

# THIS IS LEVEL 16
func _on_16Button_pressed() -> void:
	LevelsButtons.play()
	print("Presses Level 16")
	var level16 = get_tree().change_scene("res://Levels/MgaHayopSaBukid/nextLevel/Level16/Level_16MHSB.tscn")
	emit_signal('pressed')
	print ("You are now at Level 16")
	$'%animalsTheme'.stream_paused = true
	





#THE BUTTONS BELOW IS FOR THE LEVEL ERROR
#THIS IS FOR THE ERROR SOUND EFFECTS
func _on_lockInfo_pressed() -> void:
	LevelError.play()
	print("Level Locked")
	$'%bgPanel'.show()
	print("Open Level Locked")
	pass # Replace with function body.

func _on_hide_pressed() -> void:
	MenuClickSfxPlayer.play()
	$'%bgPanel'.hide()
	print("Hides LevelLock")

func _on_MgaHayopSaBukid_visibility_changed() -> void:
	$'%animalsTheme'.play()
	print("Plays Animal Theme")
