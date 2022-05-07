# == Schema Information
#
# Table name: savings
#
#  id          :bigint           not null, primary key
#  label       :string           default(""), not null
#  money       :integer          default(0), not null
#  user_id     :bigint           not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  category_id :bigint
#
FactoryBot.define do
  factory :saving do
    sequence(:label) { |n| "label_#{n}" }
    money { 1000 }
  end
end
