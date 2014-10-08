class PostsController < ApplicationController
  def create
    @post = Post.create(post_params)
    redirect_to @post.topic
  end

  def reply
    post = Post.find(params[:id])
    reply = Post.new(post_params)
    topic = Topic.find(params[:topic_id])

    if reply.valid?
      post.replies << reply

      redirect_to topic
    else
      flash[:erros] << reply.errors.messages
      redirect_to topic_path(topic)
    end
  end

  private
  def post_params
    params.require(:post).permit(:body, :topic_id)
  end
end
