require 'bundler/setup'
require 'faraday'
require 'json'
require 'pp'

class LikeGetQiitaAPI
  class << self
    def initialize
      @like_count = 0
    end

    def like_count
      response = get_like_response()
      get_count(response.headers)
    end

    def get_like_response
      connect = Faraday.new(url: 'https://qiita.com/api/v2/items/')
      connect.get 'a372800c262f56fe688a/likes'
    end

    def get_count(header)
      @like_count = header['total-count']
    end
  end
end

obj = LikeGetQiitaAPI.like_count()
p obj
