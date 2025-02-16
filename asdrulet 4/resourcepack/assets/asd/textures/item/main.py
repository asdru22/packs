from PIL import Image
import os
import math

def merge_images_into_rectangle(input_folder, output_file, tile_width=16, tile_height=16):
    """
    Merge all PNG images in a folder into a single rectangular image.

    Parameters:
    - input_folder: Path to the folder containing PNG files.
    - output_file: Path for the output merged image file.
    - tile_width: Width of each tile (individual image).
    - tile_height: Height of each tile (individual image).
    """
    # Get list of all PNG files in the folder
    images = [Image.open(os.path.join(input_folder, f)).resize((tile_width, tile_height))
              for f in os.listdir(input_folder) if f.endswith('.png')]

    if not images:
        print("No PNG files found in the folder.")
        return

    # Calculate grid dimensions
    num_images = len(images)
    grid_size = math.ceil(math.sqrt(num_images))  # Number of tiles per row/column
    output_width = grid_size * tile_width
    output_height = grid_size * tile_height

    # Create a blank image with calculated dimensions
    merged_image = Image.new('RGBA', (output_width, output_height), (255, 255, 255, 0))

    # Paste images into the grid
    for index, img in enumerate(images):
        x_offset = (index % grid_size) * tile_width
        y_offset = (index // grid_size) * tile_height
        merged_image.paste(img, (x_offset, y_offset))

    # Save the merged image
    merged_image.save(output_file)
    print(f"Merged image saved as {output_file}")

# Example usage:
input_folder = 'material'  # Replace with your folder path
output_file = 'merged_image.png'
merge_images_into_rectangle(input_folder, output_file, tile_width=16, tile_height=16)
