class TopicsController < ApplicationController

  def index
    @topics = Topic.all
  end

  def show
    @topic_name = Topic.find(params[:id])
    topic = Topic.find(params[:id])
    @courses = topic.courses
  end


end

