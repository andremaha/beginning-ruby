# Create a custom exception type
class BadDataException < RuntimeError
end

# Raise the custom exception when no argument provided
class Person
	def initialize(name)
		raise BadDataException, "No name provided" if name.empty?
	end
end

# Test it out with rescue
begin
	me = Person.new('')
rescue => e
	puts "You have tried something stupid - go read the DOCs!"
	puts e.class
end

# Test it out with catch and throw
catch(:endit) do
	10.times do
		x = rand(10)
		throw :endit if x == 3
	end

	puts "Generated 10 random numbers without generating 3"
end

