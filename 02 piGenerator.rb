### CALCULATE SINGLE ITERATION OF SUMMATION FUNCTION
def bbpSingle(k)
	out = (1.0/(16.0**k))*((4.0/(8.0*k+1.0))-(2.0/(8.0*k+4.0))-(1.0/(8.0*k+5.0))-(1.0/(8.0*k+6.0)))
	return out
end

print "How many digits?: "
digits = gets.to_i

pi = 0
#### FOR LOOP FOR SUMMATION OF bbpSingle
0.upto(digits) do |i|
	pi += bbpSingle(i)
end

# Chop off pi to desired amount of digits
# Note that the summation calculation is only accurate up to digits
finalPi = (pi * 10.0**digits).floor / 10.0**digits

print finalPi, "\n"