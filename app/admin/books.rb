ActiveAdmin.register Book do
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  permit_params :name, :cover, :category_id, autor_ids: []

  index do
    column :name
    column :autor
    column :category
    column :created_at
    column :updated_at
    actions do |books|
    end
  end

  form do |f|
    f.inputs 'Book' do
      f.input :name
      f.input :cover,  as: :file
      f.input :autors, as: :select, collection: Autor.all.collect { |autor| [autor.name, autor.id] },
                       input_html: { multiple: true }
      f.input :category, as: :select, collection: Category.all.collect { |category| [category.name, category.id] }
      f.actions
    end
  end

  show do
    attributes_table do
      row :name
      row :cover do |ad|
        image_tag(ad.cover.url)
      end
      table_for book.autors do
        column 'Autors', &:name
      end
      row :category
    end
  end
end
