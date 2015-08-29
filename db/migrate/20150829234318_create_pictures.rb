class CreatePictures < ActiveRecord::Migration
  def change
    create_table :pictures do |t|
      t.string :name
      t.string :photographer
      t.string :category
      t.text :description
      t.integer :price1
      t.integer :price2
      t.integer :price3
      t.string :size1
      t.string :size2
      t.string :size3
      t.boolean :availability, default: true

      t.timestamps null: false
    end
  end
end
