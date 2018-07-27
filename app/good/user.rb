require 'bundler/setup'
require 'faraday'
require 'json'
require 'pp'


connect = Faraday.new(url: 'https://qiita.com/api/v2/items/')
page_num = 1
count = -1

while count != 0
  response = connect.get "a372800c262f56fe688a/likes?page=#{page_num}"

  body = JSON.parse(response.body)

  count = body.length
  p "---------------------"
  p count
  p "---------------------"

  if count == 20
    for i in 0..19 do
      p body[i]["user"]["id"]
    end
  elsif (count % 20) > 1
    for i in 0..(count % 20) do
      p body[i]["user"]["id"]
    end
  else
    "終了"
  end

  page_num += 1
end
