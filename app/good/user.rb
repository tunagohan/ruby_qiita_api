require 'bundler/setup'
require 'faraday'
require 'json'
require 'pp'


connect = Faraday.new(url: 'https://qiita.com/api/v2/items/')
response = connect.get 'a372800c262f56fe688a/likes'

body = JSON.parse(response.body)
headers = JSON.parse(response.headers)

# p body
puts headers
