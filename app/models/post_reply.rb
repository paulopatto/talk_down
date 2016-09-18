# == Schema Information
#
# Table name: post_replies
#
#  post_id    :integer
#  reply_id   :integer
#  created_at :datetime
#  updated_at :datetime
#

class PostReply < ActiveRecord::Base
  # Join model class
  belongs_to :post
  belongs_to :reply, class_name: 'Post'

  validates :reply_id, uniqueness: { scope: :post }
end
