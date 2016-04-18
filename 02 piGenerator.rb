### CALCULATE SINGLE ITERATION OF SUMMATION FUNCTION
def bbpSingle(k)
	out = (1.0/(16.0**k))*((4.0/(8.0*k+1.0))-(2.0/(8.0*k+4.0))-(1.0/(8.0*k+5.0))-(1.0/(8.0*k+6.0)))
	return out
end

print "How many digits?: "
digits = gets.to_i
print "Precision: ", digits, "\n"

pi = 0

#### FOR LOOP
0.upto(digits) do |i|
	print i, " "
	pi += bbpSingle(i)
end
print "\n"


print pi, "\n"