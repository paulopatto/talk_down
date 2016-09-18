# == Schema Information
#
# Table name: posts
#
#  id         :integer          not null, primary key
#  body       :string
#  topic_id   :integer
#  created_at :datetime
#  updated_at :datetime
#  state      :string
#

class Post < ActiveRecord::Base
  include Concerns::Publishable

  has_many :post_replies
  has_many :replies, through: :post_replies
  belongs_to :topic

  def reply_to(post_id)
    post = Post.find(post_id)
    post.replies << self
  end

  def replies?
    self.replies.count > 0
  end

  def to_partial_path
    "posts/reply"
  end
end
