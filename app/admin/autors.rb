ActiveAdmin.register Autor do
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  permit_params :name, :photo, :years_of_life

  show do
    attributes_table do
      row :name
      row :photo do |ad|
        image_tag(ad.photo.url)
      end
      row :years_of_life
      table_for autor.books do
        column 'Books', &:name
      end
    end
  end
end
