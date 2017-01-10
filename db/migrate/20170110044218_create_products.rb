class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string :name
      t.string :description
      t.string :price
      t.integer :quantity
      t.string :supplier
      t.integer :category_id

      t.timestamps
    end
  end
end
