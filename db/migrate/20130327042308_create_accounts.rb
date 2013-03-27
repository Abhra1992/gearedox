class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      t.text :address
      t.text :bio
      t.string :photo
      t.date :birthdate
      t.references :experience
      t.references :country

      t.timestamps
    end
    add_index :accounts, :experience_id
    add_index :accounts, :country_id
  end
end
