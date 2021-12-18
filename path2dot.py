import csv
from xml.dom.minidom import parse

pathlist = []

dom = parse('C:/Users/adijnnuuy/Desktop/draw_2.svg')
data = dom.documentElement
path = data.getElementsByTagName('path')
for i in path:
    n = i.getAttribute('d')
    pathlist.append(n)


def getdot(path, num):
    dot_l = path.split(' ')
    x = []
    y = []
    x.append(float(dot_l[1]))
    y.append(-float(dot_l[2]))
    for i in range(len(dot_l)):
        if dot_l[i] == "C":
            x.append(float(dot_l[i+5]))
            y.append(-float(dot_l[i+6]))

    with open('path_{l}.csv'.format(l=str(num)), 'w', newline='') as csvfile:
        Write = csv.writer(csvfile)

        for i in range(len(x)):
            Write.writerow([x[i], y[i]])

    return x, y


res = []
for i in range(len(pathlist)):
    res.append(getdot(pathlist[i], i))
