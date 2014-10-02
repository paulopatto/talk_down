class ThreadsController < ApplicationController
  # GET /
  def index
    @topics = Topic.all
  end
end
