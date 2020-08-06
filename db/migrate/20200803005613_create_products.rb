class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :title
      t.references :style, null: false, foreign_key: true
      t.references :brand, null: false, foreign_key: true
      t.references :size, null: false, foreign_key: true
      t.float :price
      t.text :description

      t.timestamps
    end
  end
end
