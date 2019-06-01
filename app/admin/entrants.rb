ActiveAdmin.register Entrant do
  permit_params :department_id, :first_name,
                :last_name, :patronymic, :passport, :email

  filter :first_name
  filter :last_name
  filter :email_cont
  filter :passport_cont
end
