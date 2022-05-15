# frozen_string_literal: true

module UserDecorator
  def savings_by_categories
    convert_to_label_ja = savings.includes(:category).left_joins(:category).map { |s| s.category.label_to_ja }
    convert_to_label_ja.group_by(&:itself).transform_values(&:size)
  end
end
