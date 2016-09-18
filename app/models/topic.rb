# == Schema Information
#
# Table name: topics
#
#  id         :integer          not null, primary key
#  title      :string
#  body       :text
#  created_at :datetime
#  updated_at :datetime
#  email      :string
#  state      :string
#

class Topic < ActiveRecord::Base
  include Concerns::Publishable

  validates :title, presence: true
  validates :body , presence: true
  validates :email, presence: true

  has_many :posts

  def replies?
    self.replies > 0
  end

  def replies
    self.post.count
  end

  def to_partial_path
    "topics/reply"
  end
end
