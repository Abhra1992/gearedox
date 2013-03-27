class CreateFileTypes < ActiveRecord::Migration
  def change
    create_table :file_types do |t|
      t.string :mime
      t.string :extension
      t.string :name

      t.timestamps
    end
  end
end
