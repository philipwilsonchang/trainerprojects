### HELPER FUNCTIONS ###

# Takes a length, list min, and list max and generates a list of randomly generated numbers from min to max of length
def generateRandomList(length, min, max)
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
print myList