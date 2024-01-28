extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	$volumeBar.value += 1
	_color_changing_bar()
	pass



func _color_changing_bar():
	if($volumeBar.value < 500):
		$volumeBar.set_tint_progress(Color((($volumeBar.value) / 500),1, 0, 1))
	if($volumeBar.value > 500):
		$volumeBar.set_tint_progress(Color(1, (2-(($volumeBar.value) / 500)), 0, 1))
