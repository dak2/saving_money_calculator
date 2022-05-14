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

class Saving < ApplicationRecord
  belongs_to :user
  belongs_to :category, optional: true

  validates :label, presence: true
  validates :money, presence: true, numericality: { greater_than: 0 }

  class << self
    # TODO : 期間ごと集計を可能にする
    def total_savings_by_user
      group(:user).sum(:money).sort_by { |_, v| v }.reverse.to_h
    end
  end
end
