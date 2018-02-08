ActiveAdmin.register Book do

  permit_params :name, :cover, :description, :category_id, autor_ids: []

  index do
    column :name
    column :category
    column :created_at
    column :updated_at
    actions do |books|
    end
  end

  form do |f|
    f.inputs 'Book' do
      f.input :name
      f.input :description
      f.input :cover,  as: :file
      f.input :autors, as: :select, collection:
          Autor.all.collect { |autor| [autor.name, autor.id] }, input_html: { multiple: true },
              include_blank:  'select autors'
      f.input :category, as: :select, collection:
          Category.all.collect { |category| [category.name, category.id] },
              include_blank: 'select category'
      f.actions
    end
  end

  show do
    attributes_table do
      row :name
      row :description
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
