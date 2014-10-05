class Topic < ActiveRecord::Base
  validates :title, presence: true
  validates :body , presence: true

  has_many :posts

  def replies?
    self.posts.count > 0
  end
end
