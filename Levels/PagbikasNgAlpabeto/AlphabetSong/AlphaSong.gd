extends Control


func _ready() -> void:
	updateVolume()
	

#--------------------------------------------
# PAGBIGKAS
func _on_Pagbigkas_pressed() -> void:
	ScrollPop.play()
	yield(get_tree().create_timer(0.2), "timeout")
	var goLvl2 = get_tree().change_scene("res://Levels/PagbikasNgAlpabeto/LetterSpeak.tscn")
	print(" goes to Pagbigkas")
	
#-------------------------------------------------
#BEGIN PAGSULAT

func _on_Pagsulat_pressed() -> void:
	$'%Pagsulat'.show()
	print("Show Pagsulat")
	$'%thirdVideo'.hide()
	$'%secondVideo'.hide()
	$'%firstVideo'.hide()
	$'%alphTheme'.stream_paused = true
	print("Hides Left Button and 2 Videos")
	

func _on_VPpagsulat_finished() -> void:
	$'%curtain0'.show()
	$'%PlayVPagsulat'.show()
	print("Show Button | Curtain")

func _on_PlayVPagsulat_button_down() -> void:
	$'%VPpagsulat'.play()
	$'%curtain0'.hide()
	print("Un Paused Ponetaka")
	#$'%PlayVPagsulat'.hide()
	if $'%VPpagsulat'.is_playing():
		$'%PlayVPagsulat'.hide()
		
	#print("Pagsulat is Playing")
		
	
	
	
func _on_exitPagsulat_pressed() -> void:
	$'%Pagsulat'.hide()
	print("Hides Pagsulat")
	$'%thirdVideo'.show()
	$'%secondVideo'.show()
	$'%firstVideo'.show()
	print("Shows Left Button and 2 Videos")
	var gobacktostart = get_tree().change_scene("res://Levels/PagbikasNgAlpabeto/AlphabetSong/AlphaSong.tscn")
	print("Restart the Scene")
	$'%alphTheme'.stream_paused = false

# END PAGSULAT
#---------------------------------------------------------



#-------------------------------------------------
#BEGIN PAGAWIT

func _on_Pagawit_pressed() -> void:
	$'%Pagawit'.show()
	print("Show Pagawit")
	$'%thirdVideo'.hide()
	$'%secondVideo'.hide()
	$'%firstVideo'.hide()
	print("Hides Left Button and 2 Videos")
	$'%alphTheme'.stream_paused = true

func _on_VPpagawit_finished() -> void:
	$'%curtain1'.show()
	$'%PlayVPagawit'.show()
	print("Show Button | Curtain")
	

func _on_PlayVPagawit_button_down() -> void:
	$'%VPpagawit'.play()
	print("Un Paused Pagawit")
	$'%curtain1'.hide()
	
	if $'%VPpagawit'.is_playing():
		$'%PlayVPagawit'.hide()
		print("Pagawit is Playing")
	
	
func _on_exitPagawit_pressed() -> void:
	$'%Pagawit'.hide()
	print("Hides Pagawit")
	$'%thirdVideo'.show()
	$'%secondVideo'.show()
	$'%firstVideo'.show()
	print("Shows Left Button and 2 Videos")
	var gobacktostart = get_tree().change_scene("res://Levels/PagbikasNgAlpabeto/AlphabetSong/AlphaSong.tscn")
	print("Restart the Scene")
	$'%alphTheme'.stream_paused = false



# END PAGAWIT
#---------------------------------------------------------

func _on_GoBackButton_pressed() -> void:
	print("Presses Go Back")
	MenuClickSfxPlayer.play()
	#handles the Go back button
	var levelSelect = get_tree().change_scene("res://Scenes/MenuChoices.tscn")
	
		
func _on_Mute_pressed() -> void:
	$'%VPpagsulat'.volume_db = -80
	$'%Mute'.hide()
	$'%UnMute'.show()
	print("Mute")
	
func _on_UnMute_pressed() -> void:
	$'%VPpagsulat'.volume_db = 0
	$'%Mute'.show()
	$'%UnMute'.hide()
	print("UnMute")


func _on_Volume_pressed() -> void:
	$'%Panel2'.show()
	$'%Volume2'.show()
	$'%Volume'.hide()
	print("Volume Show")
	
func _on_Volume2_pressed() -> void:
	$'%Panel2'.hide()
	$'%Volume2'.hide()
	$'%Volume'.show()
	print("Volume Hide")

#func _process(_delta: float) -> void:
	# Process function to update the volume label continuously
	#updateVolume()

func updateVolume():
	$'%Label'.text = str($'%VPpagawit'.volume_db)
	print("Updating Volume:" + str($'%VPpagawit'.volume_db))

func _on_plus_pressed() -> void:
	var volume_step : float = 2.0
	var max_volume : float = 50.0 
	$'%VPpagawit'.volume_db += volume_step
	if $'%VPpagawit'.volume_db > max_volume:
		$'%VPpagawit'.volume_db = max_volume
	print("Volume Up")

func _on_minus_pressed() -> void:
	var volume_step : float = 2.0
	var min_volume : float = 1.0  
	$'%VPpagawit'.volume_db -= volume_step
	if $'%VPpagawit'.volume_db < min_volume:
		$'%VPpagawit'.volume_db = min_volume
	print("Volume Down")

func _on_Control_visibility_changed() -> void:
	$'%alphTheme'.play()
	print("Alphabet Theme")
	
