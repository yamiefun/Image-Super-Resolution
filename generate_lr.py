import cv2
import os


def main():
    path = "datasets/cv/training_hr_images"
    out_path = "datasets/cv/training_lr_images/X3"

    try:
        os.mkdir(out_path)
    except OSError as ose:
        pass

    for file in os.listdir(path):
        image_path = os.path.join(path, file)
        image = cv2.imread(image_path)

        lr_image = cv2.resize(
            image, (int(image.shape[1]/3), int(image.shape[0]/3)))
        out_image_path = os.path.join(out_path, f'{file[:-4]}x3.png')
        cv2.imwrite(out_image_path, lr_image)


if __name__ == "__main__":
    main()
