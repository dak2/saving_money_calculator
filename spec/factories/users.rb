FactoryBot.define do
  factory :user do
    sequence(:name)     { |n| "user_#{n}" }
    sequence(:email)    { |n| "test#{n}@example.com" }
    sequence(:password) { |n| "password#{n}" }
  end
end
