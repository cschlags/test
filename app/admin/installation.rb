ActiveAdmin.register Installation do
  permit_params :label, :longitude, :latitude
  index do
    selectable_column
    id_column
    column :label
    column :latitude
    column :longitude
    actions
  end
  form do |f|
    f.inputs "Installation Details" do
      f.input :label
      f.input :latitude
      f.input :longitude
    end
    f.actions
  end
end
