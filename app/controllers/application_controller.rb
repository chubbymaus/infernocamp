class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :main_nav
  def main_nav
    @topics = Topic.all
  end
    
end
