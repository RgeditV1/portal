class_name Level extends Node2D

@onready var portal_manager: PortalManager = $PortalManager
@onready var player: Player = $Player


var limite_portal: int = 3 #limite a la cantidad de portales que puedes abrir

#region DEBUG
func debug():
	pass
#endregion

func _ready() -> void:
	player.connect("activar_portal", crearPortal)
	player.connect("teleport",teleport)

func crearPortal():
	if(limite_portal > 0):
		portal_manager.añadirPortal(player.global_position)
		limite_portal -= 1	
	
func teleport():
	if(limite_portal < 3): #si el limite es menos que tres entonces hay portal disponible
		player.global_position = portal_manager.instancias[0].global_position
		portal_manager.eliminarPortal()
		limite_portal +=1
