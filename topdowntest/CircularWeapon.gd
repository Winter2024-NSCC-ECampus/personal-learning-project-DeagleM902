extends Weapon
class_name CircularWeapon

@export var angular_speed = 20 #speed of circling
@export var radius = 20 #radius of the circle around player
@export var amount = 1 #amount of "projectiles" circling player

var projectile_reference : Array[Area2D] #Array of projectiles rotating
var angle : float

#Remove any previous projectiles, create new by amount
func activate(source, _target, _scene_tree):
	reset()
	
	for i in range(amount):
		add_to_player(source)

func add_to_player(source):
	var projectile = projectile_node.instantiate()
	
	projectile.speed = 0 #projectile does not travel away from player
	projectile.damage = damage
	projectile.source = source
	projectile.find_child("Sprite2D").texture = texture
	projectile.hide()
	
	projectile_reference.append(projectile)
	source.call_deferred("add_child", projectile)

func update(delta):
	angle += angular_speed * delta
	
	#place projectiles equally around the player
	for i in range(projectile_reference.size()):
		var offset = i * 360 / amount
		projectile_reference[i].position = radius * Vector2(cos(deg_to_rad(angle + offset)), sin(deg_to_rad(angle + offset)))
		projectile_reference[i].show()

func upgrade_item():
	if max_level_reached():
		slot.item = evolution
		return
	if not is_upgradable():
		return
	
	var upgrade = upgrades[level - 1]
	angular_speed += upgrade.angular_speed
	amount += upgrade.amount
	damage += upgrade.damage
	level += 1

#Remove all projectiles from play
func reset():
	for i in range(projectile_reference.size()):
		projectile_reference.pop_front().queue_free()
