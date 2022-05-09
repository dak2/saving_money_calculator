class AddCategoryIdToSavings < ActiveRecord::Migration[7.0]
  def change
    add_reference :savings, :category
  end
end
