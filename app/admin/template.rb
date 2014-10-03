ActiveAdmin.register Template do
  permit_params :name, :slug
  index do
    column :id
    column :name
    column :slug
  end
  form do |f|
    f.inputs do
      f.input :name
      f.input :slug
    end
  end
end
