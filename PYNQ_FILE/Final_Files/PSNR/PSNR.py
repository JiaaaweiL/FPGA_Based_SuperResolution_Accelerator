import cv2
import numpy as np

def calculate_psnr(image1, image2):
    mse = np.mean((image1 - image2) ** 2)
    if mse == 0:
        return float('inf')
    max_pixel = 255.0
    psnr = 20 * np.log10(max_pixel / np.sqrt(mse))
    return psnr

# 加载原始图像和超分辨率处理后的图像
original_image = cv2.imread('input_image_64x64_butterfly.jpeg') # 替换为原始图像的路径
upscaled_image = cv2.imread('output_image_128x128.jpeg') # 替换为超分辨率处理后图像的路径

# 确保两个图像大小相同
upscaled_image_resized = cv2.resize(upscaled_image, (original_image.shape[1], original_image.shape[0]))

# 计算PSNR
psnr_value = calculate_psnr(original_image, upscaled_image_resized)
print(f"PSNR: {psnr_value} dB")
