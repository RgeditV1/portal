extends Node
class_name PortalManager

var guardar_posicion: Vector2

const PORTAL_ESCENA= preload("res://escenas/portal.tscn")
var portal

#Un array para almacenar en vectores la global_position del portal
var posicion_portales: Array[Vector2] = []

#funcion init para iniciar la variable position cada que se instancie
func _init(self_position: Vector2) -> void:
	guardar_posicion = self_position


func añadirPortal():
	posicion_portales.push_back(guardar_posicion) #añade un elemento a la ultima posicion de un array
	portal = PORTAL_ESCENA.instantiate()
	portal.global_position =  guardar_posicion
	
func eliminarPortal():
	posicion_portales.pop_front() #Elimina el primer elemento de un array
