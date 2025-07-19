import json
import os


def calculate_total_ingredients(item_name, recipes, desired_count=1, accumulated_counts=None):
    if accumulated_counts is None:
        accumulated_counts = {}

    if item_name not in recipes or item_name in recipes[item_name]['recipe']:
        # Skip items that include themselves in the recipe
        print(f"Skipping '{item_name}' due to self-reference in recipe.")
        return accumulated_counts

    # Retrieve the recipe and result count for this item
    item_recipe = recipes[item_name]['recipe']
    result_count = recipes[item_name].get('result', {}).get('count', 1)

    # Calculate how many times we need to craft the item to meet the desired count
    crafting_operations = -(-desired_count // result_count)  # Equivalent to math.ceil(desired_count / result_count)

    # Process each ingredient in the recipe
    for ingredient, count in item_recipe.items():
        total_count_needed = count * crafting_operations
        if ingredient in recipes:
            # Recursive case: ingredient has its own recipe
            calculate_total_ingredients(ingredient, recipes, total_count_needed, accumulated_counts)
        else:
            # Base ingredient, add it directly
            accumulated_counts[ingredient] = accumulated_counts.get(ingredient, 0) + total_count_needed

    return accumulated_counts


def convert_recipe_to_counts(recipe):
    # Initialize a dictionary to store the counts of each item
    item_counts = {}

    # Extract the pattern and key from the recipe
    pattern = recipe.get("pattern", [])
    key = recipe.get("key", {})

    # Count the occurrences of each symbol in the pattern
    for row in pattern:
        for symbol in row:
            if symbol != " ":
                item = key.get(symbol)
                if item:
                    # Update the count for the item
                    item_counts[item] = item_counts.get(item, 0) + 1

    output = {
        "result": recipe["result"],
        "recipe": item_counts
    }

    return output


def load_json_files(base_dir):
    all_data = {}

    # Walk through the directory tree
    for root, _, files in os.walk(base_dir):
        for file_name in files:
            if file_name.endswith('.json'):
                file_path = os.path.join(root, file_name)
                # Get the file name without the extension
                name_without_extension = os.path.splitext(file_name)[0]
                # Read the JSON file
                with open(file_path, 'r') as json_file:
                    try:
                        data = json.load(json_file)
                        if "recipe" in data:
                            # Use the file name without extension as the key
                            all_data[f"cgn:{name_without_extension}"] = convert_recipe_to_counts(data["recipe"])
                    except json.JSONDecodeError:
                        print(f"Error decoding JSON from file: {file_path}")

    return all_data


def main():
    # Specify the base directory containing JSON files
    base_dir = "C:\\Users\\Ale\\Documents\\GitHub\\CognitionDev\\Scripts\\item\\items"

    # Load all JSON files into a single dictionary
    recipes = load_json_files(base_dir)

    all_ingredients_totals = {}
    for item in recipes:
        print(item)
        all_ingredients_totals[item] = calculate_total_ingredients(item, recipes)

    # Write the result to a JSON file
    output_file_path = 'total_ingredients.json'
    with open(output_file_path, 'w') as output_file:
        json.dump(all_ingredients_totals, output_file, indent=2)


if __name__ == "__main__":
    main()
