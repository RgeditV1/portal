extends Node
class_name PortalManager

var guardar_posicion: Vector2

const PORTAL_ESCENA= preload("res://escenas/portal.tscn")
var portal

#Un array para almacenar las instancias
static var instancias = []

#funcion init para iniciar la variable position cada que se instancie
func _init(self_position: Vector2) -> void:
	guardar_posicion = self_position


func añadirPortal():
	portal = PORTAL_ESCENA.instantiate()
	instancias.push_back(portal) #añade un elemento a la ultima posicion de un array
	portal.global_position =  guardar_posicion
	
func eliminarPortal():
	instancias.pop_front() #Elimina el primer elemento de un array
