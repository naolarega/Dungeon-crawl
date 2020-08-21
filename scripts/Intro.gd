# Intro.gd
extends Control

func goto_menu():
	if get_tree().change_scene("res://ui/MainMenu.tscn") != OK:
		return

func _input(event):
	if event is InputEventKey:
		if event.pressed:
			$AnimationPlayer.play("fade out")
