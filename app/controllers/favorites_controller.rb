class FavoritesController < ApplicationController
  def guides
  end

  def courses
    user = current_user
    @courses = user.find_up_voted_items
  end


end
