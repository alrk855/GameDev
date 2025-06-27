extends RichTextLabel

func _ready():
	var menu = get_menu()
	# Remove "Select All" item.
	menu.remove_item(MENU_SELECT_ALL)
	# Add custom items.
	menu.add_separator()
	menu.add_item("Duplicate Text", MENU_MAX + 1)
	# Connect callback.
	menu.id_pressed.connect(_on_item_pressed)

func _on_item_pressed(id):
	if id == MENU_MAX + 1:
		add_text("\n" + get_parsed_text())
