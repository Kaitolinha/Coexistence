class_name Requestable extends Interaction

@export var item: Item = null
@export var message_has: StringName = &""
@export var message_not_has: StringName = &""

func interact(interactor: Interactor) -> bool:
	if item != null:
		var node: Node = interactor.owner

		if node is Player:
			if node.inventory.request(item):
				Global.main.information.sent(message_has, InformationUI.Information.MESSAGE)
				return true

	Global.main.information.sent(message_not_has, InformationUI.Information.MESSAGE)
	return false

func life() -> bool:
	return false
