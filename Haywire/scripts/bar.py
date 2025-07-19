from PIL import Image
import os

def interpolate_color(start_color, end_color, steps, step):
    """
    Interpolates a color from start_color to end_color over a given number of steps.
    """
    r = int(start_color[0] + (end_color[0] - start_color[0]) * (step / steps))
    g = int(start_color[1] + (end_color[1] - start_color[1]) * (step / steps))
    b = int(start_color[2] + (end_color[2] - start_color[2]) * (step / steps))
    return r, g, b

def generate_images():
    # Create an output directory
    output_dir = "../resourcepack/assets/haywire/textures/item/fog_horn_charge"
    os.makedirs(output_dir, exist_ok=True)

    # Define colors
    start_color = (0, 255, 255)  # Aqua
    end_color = (255, 255, 255)  # White

    # Generate 13 images
    for i in range(1, 14):
        img = Image.new("RGBA", (16, 16), (0, 0, 0, 0))  # Transparent background
        pixels = img.load()

        # Gradual color interpolation
        color = interpolate_color(start_color, end_color, 12, i)

        # Add pixels for the current step
        for x in range(2, 2 + i):
            if x >= 16:
                break
            pixels[x, 13] = color + (255,)  # Add full opacity to the color

        # Save the image
        filename = os.path.join(output_dir, f"{i}.png")
        img.save(filename)
        print(f"Saved {filename}")

if __name__ == "__main__":
    generate_images()
