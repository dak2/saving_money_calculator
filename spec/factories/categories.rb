# == Schema Information
#
# Table name: categories
#
#  id         :bigint           not null, primary key
#  label      :integer          default(0), not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
FactoryBot.define do
  factory :category do
    Category.labels.each_key do |label|
      trait :"#{label}" do
        label { label }
      end
    end
  end
end
