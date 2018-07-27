
require 'Faraday'

response = Faraday.get 'http://sushi.com/nigiri/sake.json'
