# Adding a simple method to String class to capitalize every word in a sentence
class String
	def titleize
		self.gsub(/(\A|\s)\w/) { |letter| letter.upcase }
	end
end

# The false behaviour - only first word will be capitalized
puts "this is a test".titleize

# Doing the tests
#raise "Fail 1" unless "this is a test".titleize == "This Is A Test"
#raise "Fail 2" unless "another test 1234".titleize == "Another Test 1234"
#raise "Fail 3" unless "We're testing titleize".titleize == "We're Testing Titleize"

# Using pro library for unit testing
require 'test/unit'

class TestTiteleize < Test::Unit::TestCase
	def test_basic
		assert_equal("This Is A Test", "this is a test".titleize)
		assert_equal("Another Test 1234", "another test 1234".titleize)
		assert_equal("We're Testing", "We're testing".titleize)
		assert_equal("This will probably fail", "foo".titleize)
	end
	# Some more test methods
	def test_extended
		assert('two'.length == 3)						# Boolean expression
		assert_not_equal("Expected", "Actual")			# != 
		assert_raise(ZeroDivisionError) { 2/0} 			# Exception type
		assert_nothing_raised(ZeroDivisionError) { 2/1 }# Positive if the none of the exceptions raised
		assert_instance_of(String, 23)  				# Checks the object against its type
	end
end