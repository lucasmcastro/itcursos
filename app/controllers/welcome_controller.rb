class WelcomeController < ApplicationController
  layout "index"
  skip_before_filter :authenticate_user!
	
  def index
  	require 'feedzirra'
  	@news_feed = Feedzirra::Feed.fetch_and_parse("http://iteducationnews.wordpress.com/feed/");
  	@jobs_feed = Feedzirra::Feed.fetch_and_parse("http://itoportunidades.wordpress.com/feed/");
    @courses = Course.order('courses.order').limit(8).all()
    #TODO: change to only promoted courses
  end
end
