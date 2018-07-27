require 'bundler/setup'
require 'faraday'
require 'json'
require 'pp'


conn = Faraday.new(:url => 'https://qiita.com/api/v2/items/')
response = conn.get 'a372800c262f56fe688a/likes'

# p response.headers

user =['name','age']
user = ['name']['age']
