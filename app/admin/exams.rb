ActiveAdmin.register Exam do
  permit_params :subject_id, :stream_id, :start_date, :auditorium

  filter :start_date
end
