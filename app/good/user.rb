require 'bundler/setup'
require 'faraday'
require 'json'
require 'pp'


connect = Faraday.new(url: 'https://qiita.com/api/v2/items/')
page_num = 1
count = 1

while count != 0
  response = connect.get "a372800c262f56fe688a/likes?page=#{page_num}"
  page_num += 1

  body = JSON.parse(response.body)
  count_amari = body.length % 20

  if count_amari == 0
    for i in 0..19 do
      p body[i]["user"]["id"]
    end
  else count_amari
    for i in 0..(count % 20 ) do
      p body[i]["user"]["id"]
    end
    break
  end
end
