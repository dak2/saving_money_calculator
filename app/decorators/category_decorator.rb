# frozen_string_literal: true

module CategoryDecorator
  class << self
    def label_to_ja(label)
      case label
      when 'food' then '食費'
      when 'commodity' then '日用品'
      when 'hobby' then '趣味'
      when 'social' then '交際費'
      when 'cloth' then '衣服'
      when 'fitness' then '健康'
      when 'book' then '書籍'
      when 'other' then 'その他'
      end
    end
  end
end
