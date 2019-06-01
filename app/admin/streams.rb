ActiveAdmin.register Stream do
  permit_params :name

  filter :name
  filter :groups
end
