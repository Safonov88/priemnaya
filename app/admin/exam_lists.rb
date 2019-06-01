ActiveAdmin.register ExamList do
  permit_params :entrant_id, :exam_id, :assessment

  filter :assessment
  filter :entrant, as: :select, collection: Entrant.pluck(:email, :id)
  filter :exams
end
