ActiveAdmin.register Category do
  permit_params :name, :slug
  index do
    selectable_column
    id_column
    column :name
    column :slug
    actions
  end
  form do |f|
    f.inputs do
      f.input :name
      f.input :slug
    end
    f.actions
  end
end
