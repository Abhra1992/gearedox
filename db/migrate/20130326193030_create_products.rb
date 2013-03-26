class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.string :screenshot
      t.string :attachment
      t.integer :checkouts
      t.references :file_type
      t.references :user

      t.timestamps
    end
    add_index :products, :file_type_id
    add_index :products, :user_id
  end
end
