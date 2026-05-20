extends Sprite2D
class_name SpritePlacement2D

@onready var placement : PlacementArea2D = PlacementArea2D.new();
@onready var collision_shape : CollisionShape2D = CollisionShape2D.new()
@onready var shape : RectangleShape2D = RectangleShape2D.new();

func _ready() -> void:
	placement.add_child(collision_shape)
	collision_shape.shape = shape;
	shape.size = SpriteHelper.get_size(self)
	add_child(placement);
	placement.global_position = global_position;
