require 'benchmark'

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
	totalSize = list.length
	numSorted = 0
	while numSorted < totalSize - 1					# Repeated until sorted sublist is the same length as whole list
		smallest = list[numSorted]					# Set "smallest element" as first element in unsorted sublist
		smallestIndex = numSorted
		numSorted.upto(totalSize - 1) do |i|			# Search through all unsorted for lowest number
			if list[i] <= smallest 					# If a smaller number is found
				smallest = list[i]					# Record it
				smallestIndex = i
			end
		end
		list.delete_at(smallestIndex)				# Move smallest entry found to top of sublist
		list.insert(numSorted, smallest)
		numSorted += 1								# Move on to next unsorted item
	end
	return list
end

# Takes in list and sorts contents using bubble sort method. Outputs list
def bubbleSort(list)
	totalSize = list.length
	numSorted = 0
	swapSpace = 0
	while numSorted < totalSize - 1							# Repeat until sorted sublist is the same length as whole list
		compareIndex1 = 0									# Prime the bubble swapping
		compareIndex2 = 1
		0.upto(totalSize - 1 - numSorted - 1) do |i|		# Compare each two number pairs up until sorted boundary
			if list[compareIndex1] > list[compareIndex2]	# If two compared numbers should be swapped
				swapSpace = list[compareIndex1]				# Swap them
				list[compareIndex1] = list[compareIndex2]
				list[compareIndex2] = swapSpace
			end
			compareIndex1 += 1
			compareIndex2 += 1
		end
		numSorted += 1										# Add one more item to sorted boundary
	end
	return list
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

print "Insertion Sort Benchmark:\n"
print Benchmark.measure{insertionSort(myList)}, "\n"
print "Selection Sort Benchmark:\n"
print Benchmark.measure{selectionSort(myList)}, "\n"
print "Bubble Sort Benchmark:\n"
print Benchmark.measure{bubbleSort(myList)}, "\n"











