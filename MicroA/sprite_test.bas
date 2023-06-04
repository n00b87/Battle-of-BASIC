var x0, y0, xd0, yd0
var x1, y1, xd1, yd1
var x2, y2, xd2, yd2
var x3, y3, xd3, yd3
var x4, y4, xd4, yd4
var x5, y5, xd5, yd5
var x6, y6, xd6, yd6

ptr xedge, yedge
xedge = 640
yedge = 360

xd0 = rand(4)+1 : yd0 = rand(4)+1
x0 = 1 : y0 = 1
xd1 = rand(4)+1 : yd1 = rand(4)+1
x1 = 1 : y1 = 1
xd2 = rand(4)+1 : yd2 = rand(4)+1
x2 = 1 : y2 = 1
xd3 = rand(4)+1 : yd3 = rand(4)+1
x3 = 1 : y3 = 1
xd4 = rand(4)+1 : yd4 = rand(4)+1
x4 = 1 : y4 = 1
xd5 = rand(4)+1 : yd5 = rand(4)+1
x5 = 1 : y5 = 1
xd6 = rand(4)+1 : yd6 = rand(4)+1
x6 = 1 : y6 = 1

ptr tileImg, spriteImg, box_img
ptr xt, yt

ptr bkg_img, sprite_img, box_img, img2
LoadImg bkg_img, "bkg.bmp", 0, 640, 360, 16
LoadImg sprite_img, "img2.bmp", 0, 32, 32, 16

ptr true
true = 1


while true = 1
	
	x0 = x0 + xd0
y0 = y0 + yd0
if x0 > 600
x0 = rand(100)+100
xd0 = -1 * xd0
endif
if x0 < 0
x0 = rand(100)+100
xd0 = -1 * xd0
endif
if y0 > 300
y0 = rand(100)+70
yd0 = -1 * yd0
endif
if y0 < 50
y0 = rand(100)+70
yd0 = -1 * yd0
endif

x1 = x1 + xd1
y1 = y1 + yd1
if x1 > 600
x1 = rand(100)+100
xd1 = -1 * xd1
endif
if x1 < 0
x1 = rand(100)+100
xd1 = -1 * xd1
endif
if y1 > 300
y1 = rand(100)+70
yd1 = -1 * yd1
endif
if y1 < 50
y1 = rand(100)+70
yd1 = -1 * yd1
endif

x2 = x2 + xd2
y2 = y2 + yd2
if x2 > 600
x2 = rand(100)+100
xd2 = -1 * xd2
endif
if x2 < 0
x2 = rand(100)+100
xd2 = -1 * xd2
endif
if y2 > 300
y2 = rand(100)+70
yd2 = -1 * yd2
endif
if y2 < 50
y2 = rand(100)+70
yd2 = -1 * yd2
endif

x3 = x3 + xd3
y3 = y3 + yd3
if x3 > 600
x3 = rand(100)+100
xd3 = -1 * xd3
endif
if x3 < 0
x3 = rand(100)+100
xd3 = -1 * xd3
endif
if y3 > 300
y3 = rand(100)+70
yd3 = -1 * yd3
endif
if y3 < 50
y3 = rand(100)+70
yd3 = -1 * yd3
endif

x4 = x4 + xd4
y4 = y4 + yd4
if x4 > 600
x4 = rand(100)+100
xd4 = -1 * xd4
endif
if x4 < 0
x4 = rand(100)+100
xd4 = -1 * xd4
endif
if y4 > 300
y4 = rand(100)+70
yd4 = -1 * yd4
endif
if y4 < 50
y4 = rand(100)+70
yd4 = -1 * yd4
endif

x5 = x5 + xd5
y5 = y5 + yd5
if x5 > 600
x5 = rand(100)+100
xd5 = -1 * xd5
endif
if x5 < 0
x5 = rand(100)+100
xd5 = -1 * xd5
endif
if y5 > 300
y5 = rand(100)+70
yd5 = -1 * yd5
endif
if y5 < 50
y5 = rand(100)+70
yd5 = -1 * yd5
endif

x6 = x6 + xd6
y6 = y6 + yd6
if x6 > 600
x6 = rand(100)+100
xd6 = -1 * xd6
endif
if x6 < 0
x6 = rand(100)+100
xd6 = -1 * xd6
endif
if y6 > 300
y6 = rand(100)+70
yd6 = -1 * yd6
endif
if y6 < 50
y6 = rand(100)+70
yd6 = -1 * yd6
endif


	ShowImgT bkg_img, 0, 0, 640, 360
	ShowImgT sprite_img, x0, y0, 32, 32
	ShowImgT sprite_img, x1, y1, 32, 32
	ShowImgT sprite_img, x2, y2, 32, 32
	ShowImgT sprite_img, x3, y3, 32, 32
	ShowImgT sprite_img, x4, y4, 32, 32
	ShowImgT sprite_img, x5, y5, 32, 32
	ShowImgT sprite_img, x6, y6, 32, 32

	swap

wend
