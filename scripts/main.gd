extends Node2D

@onready var status_label: Label = $UI/StatusLabel

var coins_total: int = 0
var coins_collected: int = 0

func _ready() -> void:
	_ensure_input_actions()
	for coin in get_tree().get_nodes_in_group("coins"):
		coins_total += 1
		coin.collected.connect(_on_coin_collected)
	_update_label()

func _process(_delta: float) -> void:
	if Input.is_action_just_pressed("restart"):
		get_tree().reload_current_scene()

func _on_coin_collected() -> void:
	coins_collected += 1
	_update_label()
	if coins_collected >= coins_total:
		status_label.text = "你贏了！按 R 重新開始"

func _update_label() -> void:
	status_label.text = "金幣：%d / %d" % [coins_collected, coins_total]

func _ensure_input_actions() -> void:
	_add_key_if_missing("move_left", KEY_A)
	_add_key_if_missing("move_left", KEY_LEFT)
	_add_key_if_missing("move_right", KEY_D)
	_add_key_if_missing("move_right", KEY_RIGHT)
	_add_key_if_missing("jump", KEY_SPACE)
	_add_key_if_missing("restart", KEY_R)

func _add_key_if_missing(action: StringName, keycode: Key) -> void:
	if not InputMap.has_action(action):
		InputMap.add_action(action)

	for event in InputMap.action_get_events(action):
		if event is InputEventKey and event.keycode == keycode:
			return

	var new_event := InputEventKey.new()
	new_event.keycode = keycode
	InputMap.action_add_event(action, new_event)
