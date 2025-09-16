class_name Level extends Node2D


@onready var player: Player = $Player
var añadir

var limite_portal: int = 3 #limite a la cantidad de portales que puedes abrir

#region DEBUG
#func debug():#por ahora solo para hacer debugs
	#for i in PortalManager.instancias:
		#print("Portal:", i.name, "Posición:", i.global_position)
#endregion

func _ready() -> void:
	player.connect("activar_portal", crearPortal)

func crearPortal():
	if(limite_portal > 0):
		añadir = PortalManager.new(player.global_position)
		añadir.añadirPortal()
		add_child(añadir.portal)
		limite_portal -= 1
	else:
		print("No tienes mas portales")
	print(limite_portal)	
	
