class WelcomeController < ApplicationController
	layout "index"
	
  def index
  	require 'feedzirra'
  	@news_feed = Feedzirra::Feed.fetch_and_parse("http://iteducationnews.wordpress.com/feed/");
  	@jobs_feed = Feedzirra::Feed.fetch_and_parse("http://itoportunidades.wordpress.com/feed/");
  	@short_courses = Course.find_all_by_kind('short', :limit => 4)
  	@long_courses = Course.find_all_by_kind('long', :limit => 4)
  	@courses = Course.all(:limit => 8)
  end
end
