### HELPER FUNCTIONS ###

# Takes a length, list min, and list max and generates a list of randomly generated numbers from min to max of length
# Throws error list if length < 0 or min > max or if length is not an integer value
def generateRandomList(length, min, max)
	unless length.is_a?(Integer)
		return ["error"]
	end
	if length <= 0
		return ["error"]
	elsif min > max
		return ["error"]
	end
	randomList = Array.new(length)
	0.upto(length - 1) do |i|
		randomList[i] = Random.rand(max - min) + min
	end
	return randomList
end


#### MAIN FUNCTION ####

print "How long should the list be? "
listLength = gets.to_i()
print "List min? "
listMin = gets.to_i()
print "List max? "
listMax = gets.to_i()

myList = generateRandomList(listLength, listMin, listMax)
if myList[0] == "error"
	print "List error"
else
	print myList
end

fileWriter = File.new("randomDigitList.txt", "w+")
0.upto(myList.length) do |i|
	fileWriter.puts(myList[i])
end
fileWriter.close
