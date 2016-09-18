# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :topic do
    email "author@example.org"
    title "Some topic"
    body  "Lorem ipsum dolor amet."
  end
end
