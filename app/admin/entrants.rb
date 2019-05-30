ActiveAdmin.register Entrant do
  permit_params :department_id, :first_name, :last_name, :patronymic, :passport
end
