extends Control


func _on_LeftButton_pressed() -> void:
	ScrollPop.play()
	#yield(get_tree().create_timer(0.5), "timeout")
	var goLvl2 = get_tree().change_scene("res://Levels/PagbikasNgAlpabeto/NextLevelP2Z/LetterSpeak2.tscn")
	print("Going Back")


#----------------------------------------------
#BEGIN PONETAKA

func _on_Ponetaka_pressed() -> void:
	$'%Ponetaka'.show()
	print("Show Ponetaka")
	$'%thirdVideo'.hide()
	$'%secondVideo'.hide()
	$'%firstVideo'.hide()
	$'%LeftButton'.hide()
	print("Hides Left Button and 2 Videos")
	$'%VPponetaka'.play()
	print("Plays Ponitika")

func _on_VPponetaka_finished() -> void:
	$'%curtain'.show()
	$'%PlayVPonetaka'.show()
	print("Show Button | Curtain")

func _on_PlayVPonetaka_button_down() -> void:
	$'%VPponetaka'.play()
	$'%curtain'.hide()
	print("Un Paused Ponetaka")
	
	if $'%VPponetaka'.is_playing():
		$'%PlayVPonetaka'.hide()
		#$'%curtain'.hide()
		print("Poentaka is Playing")
		
	#elif !$'%VPponetaka'.is_playing():
	#	$'%PlayVPonetaka'.show()
	#	#$'%curtain'.show()
	#	print("Ponetaka is Not Playing")

#Exit Video
func _on_exitPonetaka_pressed() -> void:
	$'%Ponetaka'.hide()
	print("Hides Ponetaka")
	$'%thirdVideo'.show()
	$'%secondVideo'.show()
	$'%firstVideo'.show()
	$'%LeftButton'.show()
	print("Shows Left Button and 2 Videos")
	var gobacktostart = get_tree().change_scene("res://Levels/PagbikasNgAlpabeto/AlphabetSong/AlphaSong.tscn")
	print("Restart the Scene")
	
# END PONETAKA
#------------------------------------------------


#-------------------------------------------------
#BEGIN PAGSULAT

func _on_Pagsulat_pressed() -> void:
	$'%Pagsulat'.show()
	print("Show Pagsulat")
	$'%thirdVideo'.hide()
	$'%secondVideo'.hide()
	$'%firstVideo'.hide()
	$'%LeftButton'.hide()
	print("Hides Left Button and 2 Videos")
	$'%VPpagsulat'.play()

func _on_VPpagsulat_finished() -> void:
	$'%curtain0'.show()
	$'%PlayVPagsulat'.show()
	print("Show Button | Curtain")

func _on_PlayVPagsulat_button_down() -> void:
	$'%VPpagsulat'.play()
	$'%curtain'.hide()
	print("Un Paused Ponetaka")
	
	if $'%VPpagsulat'.is_playing():
		$'%PlayVPagsulat'.hide()
		#$'%curtain'.hide()
		print("Pagsulat is Playing")
	
	#elif !$'%VPpagsulat'.is_playing():
	#	$'%PlayVPagsulat'.show()
	#	$'%curtain0'.show()
	#	print("Pagsulat is Not Playing")
	
func _on_exitPagsulat_pressed() -> void:
	$'%Pagsulat'.hide()
	print("Hides Pagsulat")
	$'%thirdVideo'.show()
	$'%secondVideo'.show()
	$'%firstVideo'.show()
	$'%LeftButton'.show()
	print("Shows Left Button and 2 Videos")
	var gobacktostart = get_tree().change_scene("res://Levels/PagbikasNgAlpabeto/AlphabetSong/AlphaSong.tscn")
	print("Restart the Scene")

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
	$'%LeftButton'.hide()
	print("Hides Left Button and 2 Videos")
	$'%VPpagawit'.play()

func _on_VPpagawit_finished() -> void:
	$'%curtain1'.show()
	$'%PlayVPagawit'.show()
	print("Show Button | Curtain")
	

func _on_PlayVPagawit_button_down() -> void:
	$'%VPpagawit'.play()
	print("Un Paused Pagawit")
	
	if $'%VPpagawit'.is_playing():
		$'%PlayVPagawit'.hide()
		#$'%curtain1'.hide()
		print("Pagawit is Playing")
		
	#elif !$'%VPpagawit'.is_playing():
	#	$'%PlayVPagawit'.show()
	#	$'%curtain1'.show()
	#	print("Pagawit is Not Playing")
	
func _on_exitPagawit_pressed() -> void:
	$'%Pagawit'.hide()
	print("Hides Pagawit")
	$'%thirdVideo'.show()
	$'%secondVideo'.show()
	$'%firstVideo'.show()
	$'%LeftButton'.show()
	print("Shows Left Button and 2 Videos")
	var gobacktostart = get_tree().change_scene("res://Levels/PagbikasNgAlpabeto/AlphabetSong/AlphaSong.tscn")
	print("Restart the Scene")



# END PAGAWIT
#---------------------------------------------------------





