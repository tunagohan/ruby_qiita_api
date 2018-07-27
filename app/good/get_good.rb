require 'bundler/setup'
require 'faraday'
require 'json'
require 'pp'

response = Faraday.get 'http://sushi.com/nigiri/sake.json'

p response
