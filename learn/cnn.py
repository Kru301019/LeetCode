import numpy as np

# Sample image (3x3) with RGB values
img = np.array([[[255, 0, 0], [0, 255, 0], [0, 0, 255]],  # Row 1 (Red, Green, Blue)
                [[255, 255, 0], [0, 255, 255], [255, 0, 255]],  # Row 2 (Yellow, Cyan, Magenta)
                [[255, 192, 203], [0, 0, 0], [128, 128, 128]]]) # Row 3 (Pink, Black, Gray)

img_normalized = img / 255.0

img_expanded = np.expand_dims(img_normalized, axis=0)

print(img_expanded)