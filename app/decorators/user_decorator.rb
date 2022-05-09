# frozen_string_literal: true

module UserDecorator
  def savings_by_categories
    savings_hash = savings.left_joins(:category)
                          .group('categories.label')
                          .count
                          .map do |k, v|
      k = 'その他' if k.nil?
      { k => v }
    end

    {}.merge(*savings_hash)
  end
end
