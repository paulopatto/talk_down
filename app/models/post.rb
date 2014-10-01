class Post < ActiveRecord::Base
  has_many :post_replies
  has_many :replies, through: :post_replies
  belongs_to :topic

  def reply_to(post_id)
    post = Post.find(post_id)
    post.replies << self
  end
end
