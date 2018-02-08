class AddPhotoToAutors < ActiveRecord::Migration[5.1]
  def change
    add_column :autors, :photo, :string
    add_column :autors, :years_of_life, :string
  end
end
