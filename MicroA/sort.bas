    'bubble sort in micro(A) from LBB
    wcolor 0,0,0 : fcolor 150,180,240
    var startTime,endTime,time
    var sort, index, itemCount, temp, i ,hasChanged, counter, tmp, j
    itemCount = 1000 
    var item1[itemCount], item2[itemCount]
    'before Sort......................
    i=1
    while i < itemCount
        item1[i] = rand(100)
		item2[i] = item1[i]
        i = i + 1
    wend
    '.................................
    'ticks start
	print 10,10,"Quick Sort micro(A)..please wait!":swap
    GETTICK startTime 

	i = 1
	tmp = 0
	while i < itemCount
		j = i
		while j < itemCount
			if item1[j] < item1[i]
				tmp = item1[i]
				item1[i] = item1[j]
				item1[j] = tmp
			endif
			j = j + 1
		wend
		i = i + 1
	wend

    'ticks end
    GETTICK endtime
    time = (endTime - startTime) / 1000
    fcolor 230,140,120: print 10,30,time : swap 
	
	print 10, 70, "----------------------------------"
    '.................................
    'ticks start
	fcolor 150,180,240
	print 10,90,"Bubble Sort micro(A)..please wait!":swap
    GETTICK startTime 
    counter = itemCount
    label doLoop
        hasChanged = 0
        i=1
        while i < counter 
            if item2[i] > item2[i + 1] 
                temp = item2[i]
                item2[i] = item2[i + 1]
                item2[i + 1] = temp
                hasChanged = 1
            endif
            i = i + 1
        wend
        counter = counter - 1
    if hasChanged = 1 : goto doLoop : endif
    'ticks end
    GETTICK endtime
    time = (endTime - startTime) / 1000
    fcolor 230,140,120: print 10,110,time : swap 