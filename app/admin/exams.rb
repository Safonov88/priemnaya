ActiveAdmin.register Exam do
  permit_params :subject_id, :stream_id, :start_date

  filter :start_date
end
