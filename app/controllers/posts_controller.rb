class PostsController < ApplicationController
  def create
    @post = Post.create(post_params)
    redirect_to @post.topic
  end

  def reply
    @post = Post.find(params[:id])
    reply = Post.new(post_params)
    @post.replies << reply
    render nothing: true
  end

  private
  def post_params
    params.require(:post).permit(:body, :topic_id)
  end
end
