# Controller for managing the homepage of the site
class HomeController < ApplicationController
  helper_method :last_meetup
  helper_method :upcoming_meetup

  def index
  end

  private

  def last_meetup
    @last_meetup ||= (Event.last_occurred || nil)
  end

  def upcoming_meetup
    @upcoming_meetup ||= (Event.upcoming || nil)
  end
end
