require 'faraday_curl'
require 'logger'

domain = "https://qiita.com/"
logger = Logger.new(nil)

connect =  Faraday.new(url: domain) do |f|
  f.request :url_encoded
  f.request :curl, logger, :warn
  f.adapter Faraday.default_adapter
end

response = connect.get do |req|
  req.url "/get"
  req.headers['Authorization'] = auth if @use_get_token
end

p response.env[:curl_command]
