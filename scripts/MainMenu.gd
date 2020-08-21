extends Control

enum menu_buttons{PLAY, HELP, EXIT}
var current_button = menu_buttons.PLAY
var menu_buttons_textures = {
	"play" : [
		preload("res://images/play.png"),
		preload("res://images/play_selected.png")],
	"help" : [
		preload("res://images/help.png"),
		preload("res://images/help_selected.png")],
	"exit" : [
		preload("res://images/exit.png"),
		preload("res://images/exit_selected.png")]}

func change_button(button):
	match button:
		menu_buttons.PLAY:
			$MarginContainer/HBoxContainer/VBoxContainer/Play.texture = menu_buttons_textures["play"][1]
		menu_buttons.HELP:
			$MarginContainer/HBoxContainer/VBoxContainer/Help.texture = menu_buttons_textures["help"][1]
		menu_buttons.EXIT:
			$MarginContainer/HBoxContainer/VBoxContainer/Exit.texture = menu_buttons_textures["exit"][1]

	if button != menu_buttons.PLAY:
		$MarginContainer/HBoxContainer/VBoxContainer/Play.texture = menu_buttons_textures["play"][0]
	if button != menu_buttons.HELP:
		$MarginContainer/HBoxContainer/VBoxContainer/Help.texture = menu_buttons_textures["help"][0]
	if button != menu_buttons.EXIT:
		$MarginContainer/HBoxContainer/VBoxContainer/Exit.texture = menu_buttons_textures["exit"][0]

func _input(event):
	if event.is_action_pressed("ui_up") and current_button > menu_buttons.PLAY:
		current_button -= 1
		change_button(current_button)
	if event.is_action_pressed("ui_down") and current_button < menu_buttons.EXIT:
		current_button += 1
		change_button(current_button)
	if event.is_action_pressed("ui_accept"):
		if current_button == menu_buttons.PLAY:
			pass
		elif current_button == menu_buttons.HELP:
			pass
		elif current_button == menu_buttons.EXIT:
			get_tree().quit()
