#!/usr/bin/ruby

require 'net/http'

Net::HTTP.start('russian-literature.com') do |http|
  req = Net::HTTP::Get.new('/index.php')
  puts http.request(req).body
end