ActiveAdmin.register Section do
  permit_params :name, :position, :category_id, :attributes
  index do
    selectable_column
    id_column
    column :category
    column :name
    column :position
    actions
  end
  form do |f|
    f.inputs "Section Details" do
      f.input :category
      f.input :name
      f.input :position
      f.has_many :attributes, allow_destroy: true, new_record: true do |a|
        a.input :name
        a.input :value
      end
    end
    f.actions
  end
end
