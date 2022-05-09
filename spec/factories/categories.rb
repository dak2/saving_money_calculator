# == Schema Information
#
# Table name: categories
#
#  id         :bigint           not null, primary key
#  label      :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
FactoryBot.define do
  factory :category do
    sequence(:label) { |n| "category_#{n}" }
  end
end
