require 'bundler/setup'
require 'faraday'
require 'json'
require 'pp'


connect = Faraday.new(url: 'https://qiita.com/api/v2/items/')
page_num = 1
count = 1
call = 0

while count != 0
  p "----------------"
  p page_num
  p "----------------"

  response = connect.get "a372800c262f56fe688a/likes?page=#{page_num}"
  page_num += 1


  body = JSON.parse(response.body)
  count_amari = body.length % 20

  if count_amari == 0
    for i in 0..19 do
      p call
      p body[i]["user"]["id"]
      call += 1
    end
  else count_amari
    for i in 0..count_amari do
      p call
      p body[i]["user"]["id"]
      call += 1
    end
    break
  end
end
