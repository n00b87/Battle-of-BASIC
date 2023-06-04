randomize(timer())
xedge=800:yedge=600:sprn=1024:maxspd=4
dim xdr[sprn],ydr[sprn],xpo[sprn],ypo[sprn]

frame_time_start = 0
n_frames = 0
frame_rate = 0

sub output_fps()
	num_frames = num_frames + 1
	if (timer()-frame_time_start) >= 1000 then
		frame_rate = num_frames
		num_frames = 0
		frame_time_start = timer()
	end if
	SetColor(RGB(0,0,0))
	BoxFill(5,5,180,50)
	SetColor(RGB(255,255,255))
	DrawText("FPS: " + Str(frame_rate), 10, 10 )
end sub


windowed=1

WindowOpen(0, "Sprite Test", WINDOWPOS_CENTERED, WINDOWPOS_CENTERED, xedge, yedge, WINDOW_VISIBLE, 0)

LoadFont(0, "FreeMono.ttf", 32)

for i=0 to sprn-1:xdr[i]=rand(4):ydr[i]=rand(4):xpo[i]=1:ypo[i]=1: next
 CanvasOpen (0,xedge,yedge,0,0,xedge,yedge,1)
 CanvasOpen (1,xedge,yedge,0,0,xedge,yedge,1)
 Loadimage(0,"sprites.png"): ColorKey(0, RGB(255,255,255)): DrawImage(0, 0, 0)

y=0
For x=0 To 1: k=x: CanvasClip(1+k,x*32,y*32,32,32,1): Next
Canvas(1)
  for xt=0 to xedge step 32 : for yt=0 to yedge step 32
     DrawImage(1,xt,yt): next:next
Canvas(0)
while (0=0)
	ClearCanvas()
   for i=0 to sprn-1
       DrawImage(2,xpo[i],ypo[i])
     xpo[i]=xpo[i]+xdr[i]: ypo[i]=ypo[i]+ydr[i]
      if xpo[i]>(xedge-32) then : xpo[i]=0 : end if
      if xpo[i]<0 then : xpo[i]=(xedge-32) : end if
      if ypo[i]>(yedge-32) then : ypo[i]=0 : end if
      if ypo[i]<50 then : ypo[i]=(yedge-32) : end if
    next
      i=rand(sprn): xdr[i]=(rand(8)-4):ydr[i]=(rand(8)-4)
      'waitick(32)
      if key(27) then : end :end if
	  
	  n_frames = n_frames + 1
	  frame_rate = int(n_frames / ((timer()+1)/1000))
	  SetColor(RGB(0,0,0))
	  BoxFill(5, 5, 180, 50)
	  SetColor(RGB(255,255,255))
	  DrawText("FPS: " + Str$(frame_rate), 10, 10)
	  
	  Update()
 wend
   waitkey
