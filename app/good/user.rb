require 'bundler/setup'
require 'faraday'
require 'json'
require 'pp'


connect = Faraday.new(url: 'https://qiita.com/api/v2/items/')
response = connect.get 'a372800c262f56fe688a/likes'

body = JSON.parse(response.body)
headers = response.headers
link = headers["link"]

while body.length != nil
  if body.length / 20 == 1
    for i in 0..19 do
      p body[i]["user"]["id"]
    end
  else
    count = body.length % 20
    for i in 0..count do
      p body[i]["user"]["id"]
    end
  end
end
