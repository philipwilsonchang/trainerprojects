#### HELPER FUNCTIONS ####

# Takes filePath and outputs file into list, separated by newlines
def fileReader(filePath)
	outList = Array.new()
	File.open(filePath).readlines.each do |line|
		outList.push(line.strip)
	end
	return outList
end

# Takes in list and sorts contents using insertion sort method. Outputs list
def insertionSort(list)

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


