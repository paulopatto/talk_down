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

# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :post do
    body "Post simple"
    association :topic

    trait :with_uglyterm do
      body "Lorem ipsum dolor uglyterm and UglYTerm with case"
    end

    # trait :without_replies do
    #   replies []
    # end

    # trait :with_replies do
    #   transient do
    #     posts_count 5
    #   end

    #   after(:create) do |post, evaluator|
    #     create_list(:post, evaluator.posts_count, post: post)
    #   end
    # end
  end
end
