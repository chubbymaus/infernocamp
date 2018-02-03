class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :main_nav
  before_action :configure_permitted_params, if: :devise_controller?
  layout :set_layout
  def main_nav
    @topics = Topic.all
  end


 def set_layout
    if current_user
      'content'
    else
      'application'
    end
 end  
  def configure_permitted_params
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name])
    devise_parameter_sanitizer.permit(:account_update, keys: [:first_name, :last_name])
  end 

  private
 
    def after_sign_in_path_for(resource)
       mycourses_path
    end 
end
