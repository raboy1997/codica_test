class CreateBooks < ActiveRecord::Migration[5.1]
  def change
    create_table :books do |t|
      t.string :name
      t.string :cover
      t.integer :autor_id
      t.integer :category_id

      t.timestamps
    end
  end
end
