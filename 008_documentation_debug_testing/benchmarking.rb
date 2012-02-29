require 'benchmark'

# How lond does it take to print a dot ten thousand times
puts Benchmark.measure { 10000.times { print "." }}

# We will count from one to million in two different ways
# We'll use bmbm method that repeats the benchmark set twice, 
# using the first as "rehearsal" and the second for the true results, 
# as in some situations CPU caching, memory caching, and other factors
# can taint the results.
iterations = 1000000

Benchmark.bmbm do |bm|
	bm.report("for: ") do
		for i in 1..iterations do
			x = i
		end
	end

	bm.report("times: ") do
		iterations.times do |i|
			x = i
		end
	end
end