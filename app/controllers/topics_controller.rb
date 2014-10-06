class TopicsController < ApplicationController
  # GET /
  def index
    @topics = Topic.page(params[:page])
  end

  def new
    @topic = Topic.new
  end

  def create
    @topic = Topic.create(topic_params)

    redirect_to action: :index
  end

  def show
    @topic = Topic.find(params[:id])
  end

  private
  def topic_params
    params.require(:topic).permit(:title, :body)
  end
end
