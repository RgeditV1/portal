extends Node2D
class_name Level

@onready var player: Player = $Player
var añadir

func debug():#por ahora solo para hacer debugs
	for i in PortalManager.instancias:
		print("Portal:", i.name, "Posición:", i.global_position)

func _ready() -> void:
	player.connect("activar_portal", crearPortal)

func crearPortal():
	añadir = PortalManager.new(player.global_position)
	añadir.añadirPortal()
	add_child(añadir.portal)
	debug()
	
