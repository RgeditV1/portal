extends CharacterBody2D
class_name Player


const VELOCIDAD = 200.0
const VEL_SALTO: int = - 400
var gravedad = ProjectSettings.get_setting("physics/2d/default_gravity")


func salto(delta):
	if Input.is_action_pressed("w") and is_on_floor():
		velocity.y = VEL_SALTO
	else:
		velocity.y += gravedad * delta

func movimiento():
	var mover = Input.get_axis("a","d")
	if mover !=0:
		velocity.x = mover * VELOCIDAD
	else:
		velocity.x = lerp(velocity.x, mover * VELOCIDAD, 0.2) #CONTROLA LA DESACELERACION
		
func _physics_process(delta: float) -> void:
	movimiento()
	salto(delta)
	move_and_slide()
