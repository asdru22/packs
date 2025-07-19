import os
from PIL import Image


# Function to scan a folder recursively for PNG files, excluding certain folders
def scan_for_pngs(folder_path, exclude_folders=None):
    if exclude_folders is None:
        exclude_folders = []

    png_files = []
    for root, dirs, files in os.walk(folder_path):
        # Skip directories that are in the exclude list
        if any(excluded in root for excluded in exclude_folders):
            continue
        for file in files:
            if file.lower().endswith(".png"):
                png_files.append(os.path.join(root, file))
    return png_files


# Function to pad the image to fit the required width of 160px without scaling
def pad_image(image, target_width=160):
    width, height = image.size
    if width < target_width:
        # Create a new image with target width, same height, and a transparent background
        new_image = Image.new('RGBA', (target_width, height), (0, 0, 0, 0))  # Transparent background
        # Paste the original image centered horizontally
        new_image.paste(image, ((target_width - width) // 2, 0))
        return new_image
    return image


# Function to create a single image from all the PNGs, arranging them in rows
def create_combined_image(png_files, output_path='combined.png', target_width=160):
    images = [Image.open(png) for png in png_files]

    # Keep track of rows and heights
    rows = []
    current_row = []
    current_row_width = 0
    current_row_height = 0

    # Place images in rows based on width limit (160px)
    for img in images:
        width, height = img.size

        # If adding the current image exceeds the target width, move to the next row
        if current_row_width + width > target_width:
            # Finalize the current row and start a new one
            rows.append((current_row, current_row_height))
            current_row = []
            current_row_width = 0
            current_row_height = 0

        # Add image to the current row
        current_row.append(img)
        current_row_width += width
        current_row_height = max(current_row_height, height)  # Row height is the max height of the row

    # Add the last row
    if current_row:
        rows.append((current_row, current_row_height))

    # Calculate total height of the final image (sum of all row heights)
    total_height = sum(row_height for _, row_height in rows)

    # Create a new blank image with the required dimensions
    combined_image = Image.new('RGBA', (target_width, total_height))

    # Paste each image into the combined image
    y_offset = 0
    for row, row_height in rows:
        x_offset = 0
        for img in row:
            combined_image.paste(img, (x_offset, y_offset))
            x_offset += img.width
        y_offset += row_height

    # Save the final combined image
    combined_image.save(output_path)


if __name__ == "__main__":
    folder_path = "C:\\Users\\Ale\\Documents\\GitHub\\CognitionDev\\resourcepack\\assets\\cgn\\textures\\item"
    output_path = "combined.png"

    # Get a comma-separated list of folder names to exclude
    exclude_input = "block,entity"
    exclude_folders = [folder.strip() for folder in exclude_input.split(',') if folder.strip()]

    # Get the list of all PNG files, excluding specified folders
    png_files = scan_for_pngs(folder_path, exclude_folders)

    if png_files:
        print(f"Found {len(png_files)} PNG files. Combining them into {output_path}...")
        create_combined_image(png_files, output_path)
        print(f"Combined image saved as {output_path}")
    else:
        print("No PNG files found.")
