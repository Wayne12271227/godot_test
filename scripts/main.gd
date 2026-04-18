extends Node2D

@onready var player: CharacterBody2D = $Player
@onready var status_label: Label = $UI/StatusLabel

var coins_total: int = 0
var coins_collected: int = 0

func _ready() -> void:
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
