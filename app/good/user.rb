require 'bundler/setup'
require 'faraday'
require 'json'
require 'pp'


connect = Faraday.new(url: 'https://qiita.com/api/v2/items/')
page_num = 1
while count != 0
  response = connect.get "a372800c262f56fe688a/likes?pange=#{page_num}"

  body = JSON.parse(response.body)
  headers = response.headers
  link = headers["link"]

  count = body.length
  if count  == 20
    for i in 0..19 do
      p body[i]["user"]["id"]
    end
  else
    count = count % 20
    for i in 0..count do
      p body[i]["user"]["id"]
    end
  end

  page_num += 1

end
