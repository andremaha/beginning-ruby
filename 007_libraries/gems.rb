require 'rubygems'
require 'RedCloth'
require 'hpricot'
require 'net/http'

r = RedCloth.new('This is a *test* of _RedCloth_ "RubyGem":http://rubyforge.org')
puts r.to_html

# Load a page
url = URI.parse('http://esaulov.net/')
response = Net::HTTP.start(url.host, url.port) do |http|
  http.get(url.path)
end

# Parse a tag line
doc = Hpricot(response.body)
puts doc.search("h1").first.inner_html
