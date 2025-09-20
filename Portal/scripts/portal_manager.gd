class_name PortalManager extends Node

const PORTAL_ESCENA= preload("res://escenas/portal.tscn")
var portal

#Un array para almacenar las instancias
var instancias = []

func añadirPortal(posicion: Vector2):
	portal = PORTAL_ESCENA.instantiate()
	instancias.append(portal) #añade un elemento a la ultima posicion de un array
	portal.global_position =  posicion
	add_child(portal)
		
func eliminarPortal():
	instancias[0].queue_free()
	instancias.remove_at(0) #Elimina el primer elemento de un array
	
