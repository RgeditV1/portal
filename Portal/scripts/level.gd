extends Node2D
class_name Level

@onready var player: Player = $Player
var añadir

func _ready() -> void:
	player.connect("activar_portal", crearPortal)



func crearPortal():
	añadir = PortalManager.new(player.global_position)
	añadir.añadirPortal()
	add_child(añadir.portal)
	
