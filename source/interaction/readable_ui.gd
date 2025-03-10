class_name ReadableUI extends InteractableUI

@onready var _label_content: Label = $Content

func _ready() -> void:
 	# Show the readable content.
	if is_instance_valid(interaction):
		if interaction is Readable:
			_label_content.text = interaction.content
			return

	_label_content.text = &"<empty>"
