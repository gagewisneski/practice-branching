class CreateCategories < ActiveRecord::Migration[5.0]
  def change
    create_table :categories do |t|
      t.string :name
      t.string :description
      t.string :admin_name
      t.string :thing1
      t.string :thing2
      t.string :thing3

      t.timestamps
    end
  end
end
