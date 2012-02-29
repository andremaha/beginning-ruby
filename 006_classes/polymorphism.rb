# Polymorphism is the concept of writing code that can work with object of multiple
# types and classes at once. Simply, it's when child classes are redefining the methods
# of their parents.

class Animal
  attr_accessor :name
  
  def initialize(name)
    @name = name
  end
end

class Cat < Animal
  def talk
    "Мяу!"
  end
end

class Dog < Animal
  def talk
    "Гав!"
  end
end

# Examples
animals = [Cat.new("Вася"), Dog.new('Мухтар'), Dog.new('Цезарь')]
animals.each do |animal|
  puts animal.name + " says " + animal.talk
end
    