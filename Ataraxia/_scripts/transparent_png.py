from PIL import Image
import os

# Input folder containing PNG images
input_folder = "C:/Users/Ale/Documents/GitHub/Ataraxia/resourcepack/assets/minecraft/textures/gui/sprites/hud/heart"

# Output folder to save resized images
output_folder = "C:/Users/Ale/Documents/GitHub/Ataraxia/resourcepack/assets/minecraft/textures/gui/sprites/hud/heart"

# Ensure the output folder exists
if not os.path.exists(output_folder):
    os.makedirs(output_folder)

# Loop through all files in the input folder
for filename in os.listdir(input_folder):
    if filename.endswith(".png"):
        # Create a new transparent 1x1 pixel image
        transparent_pixel = Image.new("RGBA", (1, 1), (0, 0, 0, 0))

        # Save the transparent 1x1 pixel image to the output folder with the same name
        output_filename = os.path.join(output_folder, filename)
        transparent_pixel.save(output_filename, "PNG")

        print(f"Converted {filename} to a transparent 1x1 pixel and saved it as {output_filename}")

print("All PNGs in the folder have been converted to transparent 1x1 pixels.")