# Testing NET::HTTP library
require 'net/http'
url = URI.parse('http://esaulov.net/')
response = Net::HTTP.start(url.host, url.port) do |http|
  http.get(url.path)
end

content = response.body
#puts content

# Testing OpenSrtuct library
# lets creating object on the fly and to add methods later on
require 'ostruct'

person = OpenStruct.new
person.name = "Andrey Esaulov"
person.age  = 28
p person

book_data = { :title => "Beginning Ruby", :author => "Peter Cooper", :pages => 1_620}
book = OpenStruct.new(book_data)
p book
