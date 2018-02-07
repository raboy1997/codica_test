class CreateAutorsBooks < ActiveRecord::Migration[5.1]
  def change
    create_table :autors_books do |t|
      t.belongs_to :autor, index: true
      t.belongs_to :book, index: true
    end
  end
end
