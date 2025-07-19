import os


class Item:
    def __init__(self, file_path, data, settings):
        file_name = os.path.basename(file_path)
        parent_dir = os.path.basename(os.path.dirname(file_path))

        # Extract the ID (filename without extension)
        self.id = os.path.splitext(file_name)[0]

        # Determine the type (parent directory) if it isn't the root directory
        self.type = parent_dir if parent_dir != 'items' else None

        # Translation
        if 'translation' not in data or data['translation'] is None:
            raise ValueError("The 'translation' key must be provided and cannot be None.")
        self.translation = data['translation']

        # Base Item
        if 'base_item' not in data or data['base_item'] is None:
            raise ValueError("The 'base_item' key must be provided and cannot be None.")
        self.base_item = data['base_item']

        # Components
        self.components = data.get('components', {})
        if settings.default_components:
            self.components.update(settings.default_components)

        self.custom_data = data.get('custom_data', None)
        if self.custom_data:
            self.components["minecraft:custom_data"] = {settings.namespace: self.custom_data}

        self.components["minecraft:item_model"] = self.get_item_model_component(settings.namespace)

        # Lore
        self.lore = data.get('lore', None)

        # Crafting
        self.crafting = data.get('crafting', None)

        # Make Trims
        self.make_trims = data.get('make_trims', False)

        # Translation Name
        self.translation_name = None

        # Recipe
        self.recipe = data.get('recipe', {})

    def __repr__(self):
        # Generate a string representation of all attributes
        attrs = ', '.join(f"{key}={value!r}" for key, value in self.__dict__.items())
        return f"Item({attrs})"

    def get_item_model_component(self, namespace):
        if self.type:
            return f'{namespace}:{self.type}/{self.id}'
        else:
            return f'{namespace}:{self.id}'
