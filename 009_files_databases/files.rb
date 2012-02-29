# Get data from keyboard
#a = gets
#puts a

# Open a file and print each line
File.open("text.txt").each { |line| puts line }

# Two ways to open files
# Using a block
File.open("text.txt") do |f|
	puts f.gets
end

# Using a file hanlder that is available thoughout the script
f = File.new("text.txt")
puts f.gets
f.close

# Assign the file handle to a class or instace variable
class MyFile
	attr_reader :handle

	def initialize(filename)
		@handle = File.new(filename, "r")
	end

	def finished
		@handle.close
	end
end

f = MyFile.new('text.txt')
puts f.handle.gets
f.finished

# Use custom delimiters - in comma separated values (cvs)
File.open("text.csv").each(', ') { |line| puts line }

# Read a file byte by byte and convert each byte to character
File.open('text.csv').each_byte { |byte| puts byte.chr }

# Some character sets do not mach 1 byte to 1 character - thus in Ruby 1.9 there is this:
File.open('russian.txt').each_char { |char| puts char }

# Reading I/O line by line
File.open("text.csv") do |f|
	2.times { puts f.gets(', ') }
end

# Reading entire file in an array
puts File.open("text.csv").readlines.join("\n|\n")

# Chosing x amount of bytes to read from the file
File.open("text.csv") do |f|
	puts f.read(6)
end

# As always with Ruby - there is more than one way to do it - much sexier way
data = File.read("text.csv")
puts data

array_of_lines = File.readlines("text.csv")
puts array_of_lines.join("\n ~ \n")

# Byte position within file
f = File.open("text.txt")
puts f.pos 					# 0 - as we are at the beginning
puts f.gets
puts f.pos 					# 107 - we are at byte 107

# let's keep reading from the 200th byte
f.pos = 200
puts f.gets
puts f.pos

# Writing in new files
f = File.new("new.txt", "w")
f.puts Time.now
f.close

# Appending to an existing file
f = File.open('text.csv', 'a')
f.puts "\nVeronika, Doctor, 27"

# Dealing with encoding
# Internal / External encoding as in I / O
puts File.open("russi")

