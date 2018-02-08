class TopicsController < ApplicationController
  access user: {except: [:destroy, :new, :create, :update, :edit]}, site_admin: :all
layout 'content'
  def index
    @topics = Topic.all
  end

  def show
    @topic_name = Topic.friendly.find(params[:id])
    topic = Topic.friendly.find(params[:id])
    @courses = topic.courses
  end


end

