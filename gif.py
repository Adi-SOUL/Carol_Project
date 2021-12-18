import imageio
import numpy
from PIL import Image, ImageDraw, ImageFont


def cv2ImgAddText(img, text, left, top, textColor=(0, 255, 0), textSize=20):

    img = Image.fromarray(img)
    draw = ImageDraw.Draw(img)
    fontText = ImageFont.truetype(
        r"F:\Downloads\N0Car\FZZJ-QNTJW.TTF", textSize, encoding="utf-8")
    draw.text((left, top), text, textColor, font=fontText)
    return numpy.asarray(img)


images = []
path = "F:/Documents/drawdata/saveml_{l}.png"

for i in range(340):
    index = str(i+1)
    p = path.format(l=index)
    img = imageio.imread(p)
    img = cv2ImgAddText(img, "N={}".format(index), 789, 1170, (0,0,0), 100)
    images.append(img)

imageio.mimsave('draw_2.gif', images, 'GIF', duration=0.2)
