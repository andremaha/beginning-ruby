#!/usr/bin/ruby

class Person
  def initialize(name, age)
    @name = name
    @age  = age
  end
  
  def name
    return @name
  end
  
  def age
    return @age
  end
end

# Create two objects
person1 = Person.new('Andrey', 28);
person2 = Person.new('Veronika', 27);

puts 'My name is ' + person1.name
puts 'I am ' + person1.age.to_s + ' years old';
puts 'My friend, ' + person2.name + ", is " + person2.age.to_s;

# Add some setters to the SAME class as we move along
class Person
  def name=(new_name)
    @name = new_name
  end
  
  def age=(new_age)
    @age = new_age
  end
end

puts "Last time I checked my name was " + person1.name
person1.name = "Andremaha"
puts "I also have a nick name. Some people call me " + person1.name

# But life is just easier in Ruby, no need to tediously specify setters and getters. Use attr_accessor insead!
class Person
  attr_accessor :name, :age, :occupation
end

person1.occupation = "Software Developer"
person2.occupation = "Medical Doctor"

puts "I am " + person1.occupation + " and she is " + person2.occupation

# There are class methods that exist within the scope of the class as a whole
class Person
  @@count = 0
  
  def initialize
    @@count += 1
  end
  
  def Person.count
    @@count
  end
end

a = Person.new
b = Person.new
c = Person.new
puts "Object was initialized " + Person.count().to_s + " times"