FactoryBot.define do
  factory :saving do
    sequence(:label) { |n| "label_#{n}" }
    money { 1000 }
  end
end
