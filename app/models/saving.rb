# == Schema Information
#
# Table name: savings
#
#  id         :integer          not null, primary key
#  label      :string           default(""), not null
#  money      :integer          default("0"), not null
#  user_id    :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Saving < ApplicationRecord
  belongs_to :user
end
