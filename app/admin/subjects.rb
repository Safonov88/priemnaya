ActiveAdmin.register Subject do
  permit_params :name

  filter :name, as: :select
end
