ActiveAdmin.register Category do

  permit_params :name

  index do
    column :name
    column :created_at
    column :updated_at
    actions do |category|
    end
  end

  show do
    attributes_table do
      row :name
      table_for category.books do
        column 'Books', &:name
      end
    end
  end
end
