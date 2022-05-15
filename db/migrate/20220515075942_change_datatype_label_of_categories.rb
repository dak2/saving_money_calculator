class ChangeDatatypeLabelOfCategories < ActiveRecord::Migration[7.0]
  def change
    change_column :categories, :label, :integer, using: 'label::integer', null: false, default: 0
  end
end
