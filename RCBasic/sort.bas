sub sort(ByRef arr, n)
For i = 0 to n-1
	For j = i to n-1
		If arr[j] < arr[i] Then
			Push_N(arr[i])
			arr[i] = arr[j]
			arr[j] = Pop_N()
		End If
	Next
Next			
end sub
sub bubble_sort(ByRef item, itemCount)
counter = itemCount-1 'rcbasic arrays start at 0 so the last index will be 1 less
'label doLoop
do
	hasChanged = 0
	i=0 'rcbasic arrays start at index 0
	while i < counter
		if item[i] > item[i + 1] then 
			temp = item[i]
			item[i] = item[i + 1]
			item[i + 1] = temp
			hasChanged = 1
		end if
		i = i + 1
	wend
	
	counter = counter - 1
loop while hasChanged = 1
end sub
'Create an array of 1000 numbers
Dim x1[1000]
Dim x2[1000]
'Add some random numbers to the Array
Randomize(Timer)
For i = 0 to 999
x1[i] = Rand(1000)
x2[i] = x1[i]
Next
Print "Quick Sort in RCBasic! .............."
'Get start time in milliseconds
startTime = Timer()
'Run the sort function on the array
sort(x1, 1000) 'sorts an array of 10 numbers
'Get the end time in milliseconds
endTime = Timer()
'Convert total runtime to seconds
time_in_secs = (endTime - startTime) / 1000
Print "Time: "; time_in_secs
Print "\n----------------------------------\n"
Print "Bubble Sort in RCBasic! .............."
'Get start time in milliseconds
startTime = Timer()
'Run the sort function on the array
bubble_sort(x2, 1000) 'sorts an array of 10 numbers
'Get the end time in milliseconds
endTime = Timer()
'Convert total runtime to seconds
time_in_secs = (endTime - startTime) / 1000
Print "Time: "; time_in_secs
Print "\n\n"
System("PAUSE") 'This will prevent the window from closing when the program ends