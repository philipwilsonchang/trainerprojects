#### HELPER FUNCTIONS ####

# Takes filePath and outputs file into list, separated by newlines
def fileReader(filePath)
	outList = Array.new()
	File.open(filePath).readlines.each do |line|
		outList.push(line.strip.to_i())
	end
	outList.pop										# Remove empty last entry
	return outList
end

# Takes in list and sorts contents using insertion sort method. Outputs list
def insertionSort(list)
	totalSize = list.length
	numSorted = 0
	while numSorted < totalSize - 1					# Repeat until sorted sublist is the same length as whole list
		toBeSorted = list[numSorted + 1]			# Grab next unsorted element in list
		0.upto(numSorted) do |i|					# Compare to each element in sorted list, starting from bottom
			if list[i] > toBeSorted					# If element compared is bigger, put toBeSorted in index right below it
				moveItem = list[numSorted + 1]
				list.delete_at(numSorted + 1)
				list.insert(i, moveItem)
				numSorted += 1						# Increase recorded number of sorted items
				break								# Break the for loop
			end
			if i == numSorted						# If toBeSorted is bigger than all values in sorted list
				numSorted += 1						# Move on to next unsorted item
			end
		end
	end
	return list
end

# Takes in list and sorts contents using selection sort method. Outputs list
def selectionSort(list)
	
end

# Takes in list and sorts contents using bubble sort method. Outputs list
def bubbleSort(list)

end

# Takes in list and sorts contents using merge sort method. Outputs list
def mergeSort(list)

end

# Takes in list and sorts contents using quick sort method. Outputs list
def quickSort(list)

end

#### MAIN FUNCTION ####

path = "randomDigitList.txt"
myList = fileReader(path)

time1 = Time.now.to_f
insertionSort(myList)
time2 = Time.now.to_f
print "Time elapsed: ", time2 - time1, "\n"