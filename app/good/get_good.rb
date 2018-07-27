require 'bundler/setup'
require 'faraday'
require 'json'
require 'pp'

conn = Faraday.new(:url => 'https://qiita.com/api/v2/items/')
response = conn.get 'a372800c262f56fe688a/likes?page=1'
body = JSON.parse(response.body)

p body
# いいねしたユーザー数
