ActiveAdmin.register Section do
  permit_params :name, :position, :category_id, components_attributes: [:name, :value]
  index do
    selectable_column
    id_column
    column :category
    column :name
    column :position
    actions
  end
  show do |s|
    attributes_table :name, :position
    table_for s.components do
      column :name
      column :value
    end
  end
  form do |f|
    f.inputs "Section Details" do
      f.input :category
      f.input :name
      f.input :position
    end
    f.inputs "Components" do
      f.has_many :components, allow_destroy: true, new_record: true do |a|
        a.input :name
        a.input :value
      end
    end
    f.actions
  end
end
