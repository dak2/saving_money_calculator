# == Schema Information
#
# Table name: categories
#
#  id         :bigint           not null, primary key
#  label      :integer          default(0), not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Category < ApplicationRecord
  has_many :savings
end
