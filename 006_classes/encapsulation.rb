# Encapsulation is the ability for an object to have certain
# methods and attributes available for use publicly, but
# for other to be visible only __within__ the class itself.

class Person
  def initialize(name)
    set_name(name)
  end
  
  def name
    @first_name + ' ' + @last_name
  end
  
  def set_name(name)
    first_name, last_name = name.split(/\s+/);
    set_first_name(first_name)
    set_last_name(last_name)
  end
  
  def set_first_name(first_name)
    @first_name = first_name
  end
  
  def set_last_name(last_name)
    @last_name = last_name
  end
  
  private :set_first_name, :set_last_name
end

# Test 1 - everything is public
me = Person.new('Andrey Esaulov')
puts me.name                 # Andrey Esaulov
me.set_first_name('Esaulov') # Making mistake here
me.set_last_name('Andrey')   # confusing first name with the last  
puts me.name                 # Esaulov Andrey