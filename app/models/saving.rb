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

  class << self
    # TODO : 期間ごと集計を可能にする
    def total_savings_by_user
      group(:user).sum(:money).sort_by { |_, v| v }.reverse.to_h
    end
  end
end
