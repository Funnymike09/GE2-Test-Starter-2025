extends Node
@export var lift = 10
@export var maxSpeed = 40
func _ready() -> void:
	pass 
func _input(event):
	if event.is_action("up"):
		$RigidBody3D.apply_force(Vector3(0,lift,0))
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
func _process(_delta):
	pass
	## what why i cannot proccess every frame. My inputs are imulse 
		
## there should be code for the each from add force untill the velocity is maxSpeed var. then just ignore 
## i will stay and figure out why and how each frame update works 
## 
