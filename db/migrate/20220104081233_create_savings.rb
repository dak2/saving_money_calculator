class CreateSavings < ActiveRecord::Migration[7.0]
  def change
    create_table :savings do |t|
      t.string :label,    null: false, default: ""
      t.integer :money,   null: false, default: 0
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
