ActiveAdmin.register Department do
  permit_params :name, :faculty_id

  filter :name
  filter :faculty
end
