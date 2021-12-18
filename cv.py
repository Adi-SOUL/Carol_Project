from cv2 import cvtColor, GaussianBlur, Canny, COLOR_BGR2GRAY, imread, imshow, erode, waitKey, destroyAllWindows, imwrite,bitwise_not
import numpy as np

k = np.ones((2, 2), np.uint8)

path = r"F:\Pictures\eac3ca50c812f956efcb60344cd1a73b42e68517.jpg"

img_raw = imread(path)

gray = cvtColor(img_raw, COLOR_BGR2GRAY)

gray = bitwise_not(gray)

out_raw = Canny(gray, 50, 150)

out = GaussianBlur(out_raw, (3, 3), 0)

out = erode(out, k)

imwrite('test.png', out)
imshow('test', out)

waitKey(0)

destroyAllWindows()
