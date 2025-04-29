extends Node
@export var lift = 10
@export var maxSpeed = 40
func _ready() -> void:
	pass 
func _input(event):
	if event.is_action_pressed("up"):
		$RigidBody3D.apply_force(Vector3.UP)
		print("P")
	if event.is_action_pressed("forward"):
		$RigidBody3D.apply_force(Vector3.FORWARD)
		print("W")
	if event.is_action_pressed("reverse"):
		$RigidBody3D.apply_force(Vector3.BACK)
		print("S")
	if event.is_action_pressed("left"):
		$RigidBody3D.apply_torque(Vector3.LEFT)
		print("L")
