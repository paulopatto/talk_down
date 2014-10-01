class PostReply < ActiveRecord::Base
  # Join model class
  belongs_to :post
  belongs_to :reply, class_name: 'Post'

  validates :reply_id, uniqueness: { scope: :post }
end
