class HomeController < ApplicationController
  def index
    require 'feedzirra'

    # fetching a single feed
    @feed = Feedzirra::Feed.fetch_and_parse("http://pipes.yahoo.com/pipes/pipe.run?_id=1ba131cccc6d96c19733c69937bc2163&_render=rss")
  end
end
