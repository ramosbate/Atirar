extends Area2D

var cena_tiro
var velocidade = 600
func _process(delta):
	position.x += velocidade * delta
	if position.x >1200:
		queue_free()
	
func _on_area_entered(area):
	if area.is_in_group("inimigo"):
		area.explodir()
		queue_free()

func _ready() -> void:
	cena_tiro = preload("res://tiro.tscn")
