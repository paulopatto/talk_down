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

# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :topic do
    email "author@example.org"
    title "Some topic"
    body  "Lorem ipsum dolor amet."

    trait :with_uglyterm do
      body "Lorem ipsum dolor uglyterm and UglYTerm with case"
    end
  end
end
