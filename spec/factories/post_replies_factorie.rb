# == Schema Information
#
# Table name: post_replies
#
#  post_id    :integer
#  reply_id   :integer
#  created_at :datetime
#  updated_at :datetime
#

# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :post_reply do
    post_id 1
    reply_id 1
  end
end
