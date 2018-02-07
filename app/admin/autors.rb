ActiveAdmin.register Autor do
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  permit_params :name

  show do
    attributes_table do
      row :name
      table_for autor.books do
        column 'Books', &:name
      end
    end
  end
end
