class FavoritesController < ApplicationController
  def guides
    user = current_user
    @guides = user.get_up_voted Guide 
  end

  def courses
    user = current_user
    @courses = user.get_up_voted Course 
  end


end
