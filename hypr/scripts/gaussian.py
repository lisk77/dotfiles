import subprocess
import io
from PIL import Image, ImageFilter

def take_screenshot():
    # Run grim command to take a screenshot
    proc = subprocess.Popen(["grim", "-"], stdout=subprocess.PIPE)

    # Read the image data from the standard output
    image_data, _ = proc.communicate()

    # Open the image using Pillow
    image = Image.open(io.BytesIO(image_data))

    return image

def gaussian_blur(image, radius=7):
    image = Image.open()
    # Apply Gaussian blur
    blurred_image = image.filter(ImageFilter.GaussianBlur(radius))

    return blurred_image

if __name__ == "__main__":
    # Take the screenshot
    screenshot = take_screenshot()

    # Apply Gaussian blur to the screenshot
    blurred_screenshot = gaussian_blur(screenshot)

    # Display or save the blurred screenshot as needed
    output_path = "/home/lisk77/tmp/output_blurred.png"
    blurred_screenshot.save(output_path)  
