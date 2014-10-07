class PostsController < ApplicationController
  def create
    @post = Post.create(post_params)
    redirect_to @post.topic
  end

  def reply
    post = Post.find(params[:id])
    post.replies << Post.new(post_params)

    topic = Topic.find(params[:topic_id])
    redirect_to topic
  end

  private
  def post_params
    params.require(:post).permit(:body, :topic_id)
  end
end
